# result

## use.pl ... OK
```
import from t::T to T at T.pm line 15.
$VAR1 = [
          {
            'carp' => *t::T::carp,
            'BEGIN' => *t::T::BEGIN,
            'croak' => *t::T::croak,
            'import' => *t::T::import,
            'V' => *t::T::V,
            'confess' => *t::T::confess
          }
        ];
$VAR1 = [
          {
            'bar' => 'BAR',
            'foo' => 'FOO'
          }
        ];
```

## require-begin.pl ... OK
```
import from t::T to T at T.pm line 15.
$VAR1 = [
          {
            'carp' => *t::T::carp,
            'BEGIN' => *t::T::BEGIN,
            'croak' => *t::T::croak,
            'V' => *t::T::V,
            'confess' => *t::T::confess
          }
        ];
$VAR1 = [
          {
            'bar' => 'BAR',
            'foo' => 'FOO'
          }
        ];
```

## require.pl ... OK
```
Name "T::V" used only once: possible typo at ./require.pl line 16.
$VAR1 = [
          {
            'carp' => *T::carp,
            'BEGIN' => *T::BEGIN,
            'v' => *T::v,
            'croak' => *T::croak,
            'module_path' => *T::module_path,
            'confess' => *T::confess,
            'V' => *T::V
          }
        ];
$VAR1 = [
          {
            'bar' => 'BAR',
            'foo' => 'FOO'
          }
        ];
```

## use-universal-require.pl ... OK
```
Name "T::V" used only once: possible typo at ./use-universal-require.pl line 17.
$VAR1 = [
          {
            'require' => *T::require,
            'v' => *T::v,
            'croak' => *T::croak,
            'import' => *T::import,
            'confess' => *T::confess,
            'V' => *T::V,
            'use' => *T::use,
            'carp' => *T::carp,
            'BEGIN' => *T::BEGIN,
            'module_path' => *T::module_path
          }
        ];
$VAR1 = [
          {
            'bar' => 'BAR',
            'foo' => 'FOO'
          }
        ];
```

### use-universal-require-begin.pl ... OK
```
import from t::T to T at T.pm line 15.
$VAR1 = [
          {
            'carp' => *t::T::carp,
            'BEGIN' => *t::T::BEGIN,
            'croak' => *t::T::croak,
            'import' => *t::T::import,
            'V' => *t::T::V,
            'confess' => *t::T::confess
          }
        ];
$VAR1 = [
          {
            'bar' => 'BAR',
            'foo' => 'FOO'
          }
        ];
```
