module.exports = {
  extends: ['@commitlint/config-conventional'],
  rules: {
    // Allow longer subjects for descriptive commit messages
    'header-max-length': [2, 'always', 100],
    // Types allowed (matching release-please config)
    'type-enum': [
      2,
      'always',
      [
        'feat',     // New feature or content
        'fix',      // Bug fix or correction
        'docs',     // Documentation changes
        'style',    // Formatting, whitespace
        'refactor', // Code restructuring
        'perf',     // Performance improvement
        'test',     // Adding tests
        'chore',    // Maintenance tasks
        'ci',       // CI/CD changes
        'build',    // Build system changes
        'revert',   // Revert previous commit
      ],
    ],
  },
};
