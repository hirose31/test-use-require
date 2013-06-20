# result

## use.pl
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

## require-begin.pl
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

## require.pl
```
Name "T::V" used only once: possible typo at ./require.pl line 16.
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
          {}
        ];
```

## use-universal-require.pl
```
Name "T::V" used only once: possible typo at ./use-universal-require.pl line 17.
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
          {}
        ];
```

## use-universal-require-begin.pl
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

