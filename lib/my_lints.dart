import 'package:custom_lint_builder/custom_lint_builder.dart';
import 'package:my_lints/src/dont_use_force_unwrap.dart';

PluginBase createPlugin() => _MyLintsPlugin();

class _MyLintsPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs _) => [
        DontUseForceUnwrap(),
      ];
}
