# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `minitest-reporters` gem.
# Please instead update this file by running `bin/tapioca gem minitest-reporters`.

# source://minitest-reporters//lib/minitest/reporters.rb#3
module Minitest
  class << self
    # source://minitest/5.17.0/lib/minitest.rb#173
    def __run(reporter, options); end

    # source://minitest/5.17.0/lib/minitest.rb#94
    def after_run(&block); end

    # source://minitest/5.17.0/lib/minitest.rb#66
    def autorun; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def backtrace_filter; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def backtrace_filter=(_arg0); end

    # source://minitest/5.17.0/lib/minitest.rb#18
    def cattr_accessor(name); end

    # source://minitest/5.17.0/lib/minitest.rb#1059
    def clock_time; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def extensions; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def extensions=(_arg0); end

    # source://minitest/5.17.0/lib/minitest.rb#264
    def filter_backtrace(bt); end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def info_signal; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def info_signal=(_arg0); end

    # source://minitest/5.17.0/lib/minitest.rb#98
    def init_plugins(options); end

    # source://minitest/5.17.0/lib/minitest.rb#105
    def load_plugins; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def parallel_executor; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def parallel_executor=(_arg0); end

    # source://minitest/5.17.0/lib/minitest.rb#186
    def process_args(args = T.unsafe(nil)); end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def reporter; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def reporter=(_arg0); end

    # source://minitest/5.17.0/lib/minitest.rb#140
    def run(args = T.unsafe(nil)); end

    # source://minitest/5.17.0/lib/minitest.rb#1050
    def run_one_method(klass, method_name); end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def seed; end

    # source://minitest/5.17.0/lib/minitest.rb#19
    def seed=(_arg0); end
  end
end

# Filters backtraces of exceptions that may arise when running tests.
#
# source://minitest-reporters//lib/minitest/extensible_backtrace_filter.rb#3
class Minitest::ExtensibleBacktraceFilter
  # Creates a new backtrace filter.
  #
  # @return [ExtensibleBacktraceFilter] a new instance of ExtensibleBacktraceFilter
  #
  # source://minitest-reporters//lib/minitest/extensible_backtrace_filter.rb#21
  def initialize; end

  # Adds a filter.
  #
  # @param regex [Regex] the filter
  #
  # source://minitest-reporters//lib/minitest/extensible_backtrace_filter.rb#28
  def add_filter(regex); end

  # Filters a backtrace.
  #
  # This will add new lines to the new backtrace until a filtered line is
  # encountered. If there were lines added to the new backtrace, it returns
  # those lines. However, if the first line in the backtrace was filtered,
  # resulting in an empty backtrace, it returns all lines that would have
  # been unfiltered. If that in turn does not contain any lines, it returns
  # the original backtrace.
  #
  # @note This logic is based off of Minitest's #filter_backtrace.
  # @param backtrace [Array] the backtrace to filter
  # @return [Array] the filtered backtrace
  #
  # source://minitest-reporters//lib/minitest/extensible_backtrace_filter.rb#52
  def filter(backtrace); end

  # Determines if the string would be filtered.
  #
  # @param str [String]
  # @return [Boolean]
  #
  # source://minitest-reporters//lib/minitest/extensible_backtrace_filter.rb#36
  def filters?(str); end

  class << self
    # Returns the default filter.
    #
    # The default filter will filter out all Minitest and minitest-reporters
    # lines.
    #
    # @return [Minitest::ExtensibleBacktraceFilter]
    #
    # source://minitest-reporters//lib/minitest/extensible_backtrace_filter.rb#10
    def default_filter; end
  end
end

# source://minitest-reporters//lib/minitest/relative_position.rb#2
module Minitest::RelativePosition
  private

  # source://minitest-reporters//lib/minitest/relative_position.rb#14
  def pad(str, size = T.unsafe(nil)); end

  # source://minitest-reporters//lib/minitest/relative_position.rb#18
  def pad_mark(str); end

  # source://minitest-reporters//lib/minitest/relative_position.rb#22
  def pad_test(str); end

  # source://minitest-reporters//lib/minitest/relative_position.rb#10
  def print_with_info_padding(line); end
end

# source://minitest-reporters//lib/minitest/relative_position.rb#6
Minitest::RelativePosition::INFO_PADDING = T.let(T.unsafe(nil), Integer)

# source://minitest-reporters//lib/minitest/relative_position.rb#5
Minitest::RelativePosition::MARK_SIZE = T.let(T.unsafe(nil), Integer)

# source://minitest-reporters//lib/minitest/relative_position.rb#3
Minitest::RelativePosition::TEST_PADDING = T.let(T.unsafe(nil), Integer)

# source://minitest-reporters//lib/minitest/relative_position.rb#4
Minitest::RelativePosition::TEST_SIZE = T.let(T.unsafe(nil), Integer)

# source://minitest-reporters//lib/minitest/reporters.rb#7
module Minitest::Reporters
  class << self
    # source://minitest-reporters//lib/minitest/reporters.rb#61
    def choose_reporters(console_reporters, env); end

    # source://minitest-reporters//lib/minitest/reporters.rb#73
    def clock_time; end

    # source://minitest-reporters//lib/minitest/reporters.rb#81
    def minitest_version; end

    # Returns the value of attribute reporters.
    #
    # source://minitest-reporters//lib/minitest/reporters.rb#22
    def reporters; end

    # Sets the attribute reporters
    #
    # @param value the value to set the attribute reporters to.
    #
    # source://minitest-reporters//lib/minitest/reporters.rb#22
    def reporters=(_arg0); end

    # source://minitest-reporters//lib/minitest/reporters.rb#25
    def use!(console_reporters = T.unsafe(nil), env = T.unsafe(nil), backtrace_filter = T.unsafe(nil)); end

    # source://minitest-reporters//lib/minitest/reporters.rb#43
    def use_around_test_hooks!; end

    # source://minitest-reporters//lib/minitest/reporters.rb#85
    def use_old_activesupport_fix!; end

    # source://minitest-reporters//lib/minitest/reporters.rb#39
    def use_runner!(console_reporters, env); end
  end
end

# source://minitest-reporters//lib/minitest/reporters/ansi.rb#3
module Minitest::Reporters::ANSI; end

# source://minitest-reporters//lib/minitest/reporters/ansi.rb#4
module Minitest::Reporters::ANSI::Code
  include ::ANSI::Constants
  include ::ANSI::Code
  extend ::ANSI::Constants
  extend ::ANSI::Code

  class << self
    # @return [Boolean]
    #
    # source://minitest-reporters//lib/minitest/reporters/ansi.rb#5
    def color?; end
  end
end

# source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#25
class Minitest::Reporters::BaseReporter < ::Minitest::StatisticsReporter
  # @return [BaseReporter] a new instance of BaseReporter
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#28
  def initialize(options = T.unsafe(nil)); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#33
  def add_defaults(defaults); end

  # called by our own after hooks
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#55
  def after_test(_test); end

  # called by our own before hooks
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#38
  def before_test(test); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#49
  def record(test); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#57
  def report; end

  # Returns the value of attribute tests.
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#26
  def tests; end

  # Sets the attribute tests
  #
  # @param value the value to set the attribute tests to.
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#26
  def tests=(_arg0); end

  protected

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#66
  def after_suite(test); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#68
  def before_suite(test); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#111
  def filter_backtrace(backtrace); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#119
  def print(*args); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#93
  def print_colored_status(test); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#123
  def print_info(e, name = T.unsafe(nil)); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#115
  def puts(*args); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#70
  def result(test); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#82
  def test_class(result); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#107
  def total_count; end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#103
  def total_time; end
end

# source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#10
class Minitest::Reporters::DefaultReporter < ::Minitest::Reporters::BaseReporter
  include ::ANSI::Constants
  include ::ANSI::Code
  include ::Minitest::Reporters::ANSI::Code
  include ::Minitest::RelativePosition

  # @return [DefaultReporter] a new instance of DefaultReporter
  #
  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#14
  def initialize(options = T.unsafe(nil)); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#47
  def after_suite(suite); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#42
  def before_suite(suite); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#37
  def before_test(test); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#59
  def on_record(test); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#94
  def on_report; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#31
  def on_start; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#140
  def print_failure(test); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#53
  def record(test); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#85
  def record_failure(record); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#77
  def record_pass(record); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#81
  def record_skip(record); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#89
  def report; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#26
  def start; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#89
  def to_s; end

  private

  # @return [Boolean]
  #
  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#167
  def color?; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#189
  def colored_for(result, string); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#159
  def get_source_location(result); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#177
  def green(string); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#206
  def location(exception); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#216
  def message_for(test); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#185
  def red(string); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#155
  def relative_path(path); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#230
  def result_line; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#235
  def suite_duration(suite); end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#197
  def suite_result; end

  # source://minitest-reporters//lib/minitest/reporters/default_reporter.rb#181
  def yellow(string); end
end

# A reporter for generating HTML test reports
# This is recommended to be used with a CI server, where the report is kept as an artifact and is accessible via
# a shared link
#
# The reporter sorts the results alphabetically and then by results
# so that failing and skipped tests are at the top.
#
# When using Minitest Specs, the number prefix is dropped from the name of the test so that it reads well
#
# On each test run all files in the reports directory are deleted, this prevents a build up of old reports
#
# The report is generated using ERB. A custom ERB template can be provided but it is not required
# The default ERB template uses JQuery and Bootstrap, both of these are included by referencing the CDN sites
#
# source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#20
class Minitest::Reporters::HtmlReporter < ::Minitest::Reporters::BaseReporter
  # The constructor takes a hash, and uses the following keys:
  # :title - the title that will be used in the report, defaults to 'Test Results'
  # :reports_dir - the directory the reports should be written to, defaults to 'test/html_reports'
  # :erb_template - the path to a custom ERB template, defaults to the supplied ERB template
  # :mode - Useful for debugging, :terse suppresses errors and is the default, :verbose lets errors bubble up
  # :output_filename - the report's filename, defaults to 'index.html'
  #
  # @return [HtmlReporter] a new instance of HtmlReporter
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#57
  def initialize(args = T.unsafe(nil)); end

  # Trims off the number prefix on test names when using Minitest Specs
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#45
  def friendly_name(test); end

  # The number of tests that passed
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#25
  def passes; end

  # The percentage of tests that failed
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#40
  def percent_errors_failures; end

  # The percentage of tests that passed, calculated in a way that avoids rounding errors
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#30
  def percent_passes; end

  # The percentage of tests that were skipped
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#35
  def percent_skipps; end

  # Called by the framework to generate the report
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#88
  def report; end

  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#79
  def start; end

  # The title of the report
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#22
  def title; end

  private

  # Test suites are first ordered by evaluating the results of the tests, then by test suite name
  # Test suites which have failing tests are given highest order
  # Tests suites which have skipped tests are given second highest priority
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#139
  def compare_suites(suite_a, suite_b); end

  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#128
  def compare_suites_by_name(suite_a, suite_b); end

  # Tests are first ordered by evaluating the results of the tests, then by tests names
  # Tess which fail are given highest order
  # Tests which are skipped are given second highest priority
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#154
  def compare_tests(test_a, test_b); end

  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#132
  def compare_tests_by_name(test_a, test_b); end

  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#124
  def html_file; end

  # taken from the JUnit reporter
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#204
  def location(exception); end

  # based on message_for(test) from the JUnit reporter
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#187
  def message_for(test); end

  # based on analyze_suite from the JUnit reporter
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#172
  def summarize_suite(suite, tests); end

  # @return [Boolean]
  #
  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#167
  def test_fail_or_error?(test); end

  # source://minitest-reporters//lib/minitest/reporters/html_reporter.rb#213
  def total_time_to_hms; end
end

# A reporter for writing JUnit test reports
# Intended for easy integration with CI servers - tested on JetBrains TeamCity
#
# Inspired by ci_reporter (see https://github.com/nicksieger/ci_reporter)
# Also inspired by Marc Seeger's attempt at producing a JUnitReporter (see https://github.com/rb2k/minitest-reporters/commit/e13d95b5f884453a9c77f62bc5cba3fa1df30ef5)
# Also inspired by minitest-ci (see https://github.com/bhenderson/minitest-ci)
#
# source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#16
class Minitest::Reporters::JUnitReporter < ::Minitest::Reporters::BaseReporter
  # @return [JUnitReporter] a new instance of JUnitReporter
  #
  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#21
  def initialize(reports_dir = T.unsafe(nil), empty = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#64
  def get_relative_path(result); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#35
  def report; end

  # Returns the value of attribute reports_path.
  #
  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#19
  def reports_path; end

  private

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#168
  def analyze_suite(tests); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#181
  def filename_for(suite); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#77
  def get_source_location(result); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#158
  def location(exception); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#142
  def message_for(test); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#85
  def parse_xml_for(xml, suite, tests); end

  # source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#119
  def xml_message_for(test); end
end

# source://minitest-reporters//lib/minitest/reporters/junit_reporter.rb#17
Minitest::Reporters::JUnitReporter::DEFAULT_REPORTS_DIR = T.let(T.unsafe(nil), String)

# This reporter creates a report providing the average (mean), minimum and
# maximum times for a test to run. Running this for all your tests will
# allow you to:
#
# 1) Identify the slowest running tests over time as potential candidates
#    for improvements or refactoring.
# 2) Identify (and fix) regressions in test run speed caused by changes to
#    your tests or algorithms in your code.
# 3) Provide an abundance of statistics to enjoy.
#
# This is achieved by creating a (configurable) 'previous runs' statistics
# file which is parsed at the end of each run to provide a new
# (configurable) report. These statistics can be reset at any time by using
# a simple rake task:
#
#     rake reset_statistics
#
# source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#24
class Minitest::Reporters::MeanTimeReporter < ::Minitest::Reporters::DefaultReporter
  # @option previous_runs_filename
  # @option show_count
  # @option show_progress
  # @option show_all_runs
  # @option sort_column
  # @option order
  # @option report_filename
  # @param order [Hash] a customizable set of options
  # @param previous_runs_filename [Hash] a customizable set of options
  # @param options [Hash]
  # @param report_filename [Hash] a customizable set of options
  # @param show_count [Hash] a customizable set of options
  # @param show_progress [Hash] a customizable set of options
  # @param show_all_runs [Hash] a customizable set of options
  # @param sort_column [Hash] a customizable set of options
  # @return [Minitest::Reporters::MeanTimeReporter]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#54
  def initialize(options = T.unsafe(nil)); end

  # Copies the suite times from the
  # {Minitest::Reporters::DefaultReporter#after_suite} method, making them
  # available to this class.
  #
  # @return [Hash<String => Float>]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#65
  def after_suite(suite); end

  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#90
  def on_record(test); end

  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#94
  def on_report; end

  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#86
  def on_start; end

  # Runs the {Minitest::Reporters::DefaultReporter#report} method and then
  # enhances it by storing the results to the 'previous_runs_filename' and
  # outputs the parsed results to both the 'report_filename' and the
  # terminal.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#76
  def report; end

  # Resets the 'previous runs' file, essentially removing all previous
  # statistics gathered.
  #
  # @return [void]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#102
  def reset_statistics!; end

  protected

  # Returns the value of attribute all_suite_times.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#108
  def all_suite_times; end

  # Sets the attribute all_suite_times
  #
  # @param value the value to set the attribute all_suite_times to.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#108
  def all_suite_times=(_arg0); end

  private

  # @return [Boolean] Whether the given :order option is :asc.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#346
  def asc?; end

  # @return [String] A yellow 'Avg:' label.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#301
  def avg_label; end

  # @return [Array<Hash<Symbol => String>>] All of the results sorted by
  #   the :sort_column option. (Defaults to :avg).
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#172
  def column_sorted_body; end

  # Creates a new report file in the 'report_filename'. This file contains
  # a line for each test of the following example format: (this is a single
  # line despite explicit wrapping)
  #
  # Avg: 0.0555555 Min: 0.0498765 Max: 0.0612345 Last: 0.0499421
  # Description: The test name
  #
  # Note however the timings are to 9 decimal places, and padded to 12
  # characters and each label is coloured, Avg (yellow), Min (green),
  # Max (red), Last (multi), and Description (blue). It looks pretty!
  #
  # The 'Last' label is special in that it will be colour coded depending
  # on whether the last run was faster (bright green) or slower (bright red)
  # or inconclusive (purple). This helps to identify changes on a per run
  # basis.
  #
  # @return [void]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#286
  def create_new_report!; end

  # Creates a new 'previous runs' file, or updates the existing one with
  # the latest timings.
  #
  # @return [void]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#248
  def create_or_update_previous_runs!; end

  # @return [Hash<String => Float>]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#113
  def current_run; end

  # @return [Hash] Sets default values for the filenames used by this class,
  #   and the number of tests to output to output to the screen after each
  #   run.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#120
  def defaults; end

  # @return [String] A blue 'Description:' label.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#306
  def des_label; end

  # @return [Boolean] Whether the given :order option is :desc (default).
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#351
  def desc?; end

  # @return [String] A red 'Max:' label.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#311
  def max_label; end

  # @return [String] A green 'Min:' label.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#316
  def min_label; end

  # @return [Hash]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#189
  def options; end

  # @raise [Minitest::Reporters::MeanTimeReporter::InvalidOrder] When the given :order option is invalid.
  # @return [Symbol] The :order option, or by default; :desc.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#358
  def order; end

  # @return [String] All of the column-sorted results sorted by the :order
  #   option. (Defaults to :desc).
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#160
  def order_sorted_body; end

  # @return [Hash<String => Array<Float>]] Hash<String => Array<Float>]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#200
  def previous_run; end

  # @return [String] The path to the file which contains all the durations
  #   for each test run. The previous runs file is in YAML format, using the
  #   test name for the key and an array containing the time taken to run
  #   this test for values.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#208
  def previous_runs_filename; end

  # Returns a boolean indicating whether a previous runs file exists.
  #
  # @return [Boolean]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#215
  def previously_ran?; end

  # @param run [Float] The last run time.
  # @param min [Float] The minimum run time.
  # @param max [Float] The maximum run time.
  # @return [Symbol] One of :faster, :slower or :inconclusive.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#335
  def rate(run, min, max); end

  # The report itself. Displays statistics about all runs, ideal for use
  # with the Unix 'head' command. Listed in slowest average descending
  # order.
  #
  # @return [String]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#146
  def report_body; end

  # @return [String] The path to the file which contains the parsed test
  #   results. The results file contains a line for each test with the
  #   average time of the test, the minimum time the test took to run,
  #   the maximum time the test took to run and a description of the test
  #   (which is the test name as emitted by Minitest).
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#224
  def report_filename; end

  # Added to the top of the report file and to the screen output.
  #
  # @return [String]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#135
  def report_title; end

  # @param rating [Symbol] One of :faster, :slower or :inconclusive.
  # @return [String] A purple 'Last:' label.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#322
  def run_label(rating); end

  # A barbaric way to find out how many runs are in the previous runs file;
  # this method takes the first test listed, and counts its samples
  # trusting (naively) all runs to be the same number of samples. This will
  # produce incorrect averages when new tests are added, so it is advised
  # to restart the statistics by removing the 'previous runs' file. A rake
  # task is provided to make this more convenient.
  #
  #    rake reset_statistics
  #
  # @return [Fixnum]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#238
  def samples; end

  # @return [Fixnum] The number of tests to output to output to the screen
  #   after each run.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#195
  def show_count; end

  # @raise [Minitest::Reporters::MeanTimeReporter::InvalidSortColumn] When the given :sort_column option is invalid.
  # @return [Symbol] The :sort_column option, or by default; :avg.
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#374
  def sort_column; end

  # Writes a number of tests (configured via the 'show_count' option) to the
  # screen after creating the report. See '#create_new_report!' for example
  # output information.
  #
  # @return [void]
  #
  # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#295
  def write_to_screen!; end

  class << self
    # Reset the statistics file for this reporter. Called via a rake task:
    #
    #     rake reset_statistics
    #
    # @return [Boolean]
    #
    # source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#33
    def reset_statistics!; end
  end
end

# source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#25
class Minitest::Reporters::MeanTimeReporter::InvalidOrder < ::StandardError; end

# source://minitest-reporters//lib/minitest/reporters/mean_time_reporter.rb#26
class Minitest::Reporters::MeanTimeReporter::InvalidSortColumn < ::StandardError; end

# source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#12
class Minitest::Reporters::ProgressReporter < ::Minitest::Reporters::BaseReporter
  include ::Minitest::RelativePosition
  include ::ANSI::Constants
  include ::ANSI::Code
  include ::Minitest::Reporters::ANSI::Code

  # @return [ProgressReporter] a new instance of ProgressReporter
  #
  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#18
  def initialize(options = T.unsafe(nil)); end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#41
  def before_test(test); end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#49
  def record(test); end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#70
  def report; end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#32
  def start; end

  private

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#93
  def color; end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#97
  def color=(color); end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#89
  def print_test_with_time(test); end

  # source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#85
  def show; end
end

# source://minitest-reporters//lib/minitest/reporters/progress_reporter.rb#16
Minitest::Reporters::ProgressReporter::PROGRESS_MARK = T.let(T.unsafe(nil), String)

# Simple reporter designed for RubyMate.
#
# source://minitest-reporters//lib/minitest/reporters/ruby_mate_reporter.rb#4
class Minitest::Reporters::RubyMateReporter < ::Minitest::Reporters::BaseReporter
  include ::Minitest::RelativePosition

  # source://minitest-reporters//lib/minitest/reporters/ruby_mate_reporter.rb#15
  def record(test); end

  # source://minitest-reporters//lib/minitest/reporters/ruby_mate_reporter.rb#37
  def report; end

  # source://minitest-reporters//lib/minitest/reporters/ruby_mate_reporter.rb#9
  def start; end

  private

  # source://minitest-reporters//lib/minitest/reporters/ruby_mate_reporter.rb#49
  def print_test_with_time(test); end
end

# source://minitest-reporters//lib/minitest/reporters/ruby_mate_reporter.rb#7
Minitest::Reporters::RubyMateReporter::INFO_PADDING = T.let(T.unsafe(nil), Integer)

# source://minitest-reporters//lib/minitest/reporters/rubymine_reporter.rb#15
class Minitest::Reporters::RubyMineReporter < ::Minitest::Reporters::DefaultReporter
  # source://minitest-reporters//lib/minitest/reporters/rubymine_reporter.rb#16
  def initialize(options = T.unsafe(nil)); end
end

# source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#9
class Minitest::Reporters::SpecReporter < ::Minitest::Reporters::BaseReporter
  include ::ANSI::Constants
  include ::ANSI::Code
  include ::Minitest::Reporters::ANSI::Code
  include ::Minitest::RelativePosition

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#29
  def record(test); end

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#19
  def report; end

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#13
  def start; end

  protected

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#41
  def after_suite(_suite); end

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#37
  def before_suite(suite); end

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#53
  def record_print_failures_if_any(test); end

  # source://minitest-reporters//lib/minitest/reporters/spec_reporter.rb#45
  def record_print_status(test); end
end

# source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#3
class Minitest::Reporters::Suite
  # @return [Suite] a new instance of Suite
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#5
  def initialize(name); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#9
  def ==(other); end

  # @return [Boolean]
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#13
  def eql?(other); end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#17
  def hash; end

  # Returns the value of attribute name.
  #
  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#4
  def name; end

  # source://minitest-reporters//lib/minitest/reporters/base_reporter.rb#21
  def to_s; end
end

# source://minitest-reporters//lib/minitest/reporters/version.rb#3
Minitest::Reporters::VERSION = T.let(T.unsafe(nil), String)

# source://minitest/5.17.0/lib/minitest.rb#12
Minitest::VERSION = T.let(T.unsafe(nil), String)
