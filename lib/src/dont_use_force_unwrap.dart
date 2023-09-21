import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';


class DontUseForceUnwrap extends DartLintRule {
  DontUseForceUnwrap() : super(code: _code);

  static const _code = LintCode(
    name: 'dont_use_force_unwrap',
    problemMessage: 'Do not use force unwrap',
    correctionMessage: 'Check null safety docs and use other strategy for nullable values',
    url: 'https://dart.dev/null-safety/understanding-null-safety',
    errorSeverity: ErrorSeverity.ERROR,
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addPostfixExpression((node) {
      if (node.operator.lexeme == '!') {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
