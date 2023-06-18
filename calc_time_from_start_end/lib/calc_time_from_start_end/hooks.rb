require "time"

module CalcTimeFromStartEnd
  class Hooks < Redmine::Hook::Listener
    def controller_timelog_edit_before_save(context)
      params = context[:params]
      time_entry = context[:time_entry]

      start_text_field = time_entry.custom_field_values.detect {|c| c.custom_field.name == "開始日時"}
      end_text_field = time_entry.custom_field_values.detect {|c| c.custom_field.name == "終了日時"}
      return if start_text_field.nil? || end_text_field.nil?
      return if start_text_field.value == "" || end_text_field.value == ""
      start_time = Time.parse(start_text_field.value)
      end_time = Time.parse(end_text_field.value)
      seconds = end_time - start_time
      time_entry.hours = seconds / 3600
    end
  end
end
