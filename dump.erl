-file("lib/examples/enom.ex", 204).

-module('Elixir.Enom').

-compile([no_auto_import, inline_list_funcs,
          {inline,
           [{reduce_enumerable, 3}, {reduce_by, 3}, {reduce, 3},
            {entry_to_string, 1}, {aggregate, 3}]}]).

-spec reverse(t()) -> list().

-spec drop_every(t(), non_neg_integer()) -> list().

-spec split_while(t(),
                  (element()) -> elixir:as_boolean(term())) -> {list(),
                                                                list()}.

-spec to_list(t()) -> [element()].

-spec join(t(),
           'Elixir.String':t()) -> 'Elixir.String':t().

-spec sort(t()) -> list().

-spec slice(t(), index(), non_neg_integer()) -> list().

-spec reverse(t(), t()) -> list().

-spec count(t(),
            (element()) -> elixir:as_boolean(term())) -> non_neg_integer().

-spec zip(t(), t()) -> [{any(), any()}].

-spec at(t(), index(), default()) -> element() |
                                     default().

-spec count(t()) -> non_neg_integer().

-spec intersperse(t(), element()) -> list().

-spec find_index(t(),
                 (element()) -> any()) -> non_neg_integer() | nil.

-spec 'empty?'(t()) -> boolean().

-spec drop(t(), integer()) -> list().

-spec 'all?'(t(),
             (element()) -> elixir:as_boolean(term())) -> boolean().

-spec into('Elixir.Enomerable':t(),
           'Elixir.Collectable':t(),
           (term()) -> term()) -> 'Elixir.Collectable':t().

-spec random(t()) -> element().

-spec map_join(t(), 'Elixir.String':t(),
               (element()) -> 'Elixir.String.Chars':t()) -> 'Elixir.String':t().

-spec map_reduce(t(), acc(),
                 (element(), acc()) -> {element(), acc()}) -> {list(),
                                                               acc()}.

-spec concat(t(), t()) -> t().

-spec concat(t()) -> t().

-spec take_while(t(),
                 (element()) -> elixir:as_boolean(term())) -> list().

-spec take_every(t(), non_neg_integer()) -> list().

-spec scan(t(), (element(), any()) -> any()) -> list().

-spec 'fetch!'(t(), index()) -> element().

-spec take_random(t(), non_neg_integer()) -> list().

-spec reject(t(),
             (element()) -> elixir:as_boolean(term())) -> list().

-spec max_by(t(), (element()) -> any(),
             () -> empty_result) -> element() |
                                    empty_result when empty_result :: any().

-spec with_index(t(), integer()) -> [{element(),
                                      index()}].

-spec flat_map(t(), (element()) -> t()) -> list().

-spec chunk_by(t(), (element()) -> any()) -> [list()].

-spec filter(t(),
             (element()) -> elixir:as_boolean(term())) -> list().

-spec dedup_by(t(), (element()) -> term()) -> list().

-spec min(t(), () -> empty_result) -> element() |
                                      empty_result when empty_result :: any().

-spec chunk_every(t(), pos_integer(), pos_integer(),
                  t() | discard) -> [list()].

-spec fetch(t(), index()) -> {ok, element()} | error.

-spec reverse_slice(t(), non_neg_integer(),
                    non_neg_integer()) -> list().

-spec map(t(), (element()) -> any()) -> list().

-spec drop_while(t(),
                 (element()) -> elixir:as_boolean(term())) -> list().

-spec chunk_while(t(), acc(),
                  (element(), acc()) -> {cont, chunk, acc()} |
                                        {cont, acc()} | {halt, acc()},
                  (acc()) -> {cont, chunk, acc()} |
                             {cont,
                              acc()}) -> 'Elixir.Enomerable':t() when chunk ::
                                                                          any().

-spec 'member?'(t(), element()) -> boolean().

-spec take(t(), integer()) -> list().

-spec split(t(), integer()) -> {list(), list()}.

-spec slice(t(), 'Elixir.Range':t()) -> list().

-spec uniq(t()) -> list().

-spec flat_map_reduce(t(), acc(), fun) -> {[any()],
                                           acc()} when fun :: (element(),
                                                               acc()) -> {t(),
                                                                          acc()} |
                                                                         {halt,
                                                                          acc()}.

-spec group_by(t(), (element()) -> any(),
               (element()) -> any()) -> map().

-spec sort(t(),
           (element(), element()) -> boolean()) -> list().

-spec sort_by(t(), (element()) -> mapped_element,
              (mapped_element,
               mapped_element) -> boolean()) -> list() when mapped_element ::
                                                                element().

-spec split_with(t(),
                 (element()) -> elixir:as_boolean(term())) -> {list(),
                                                               list()}.

-spec min_max(t(), () -> empty_result) -> {element(),
                                           element()} |
                                          empty_result when empty_result ::
                                                                any().

-spec 'any?'(t(),
             (element()) -> elixir:as_boolean(term())) -> boolean().

-spec dedup(t()) -> list().

-spec min_max_by(t(), (element()) -> any(),
                 () -> empty_result) -> {element(), element()} |
                                        empty_result when empty_result :: any().

-spec shuffle(t()) -> list().

-spec sum(t()) -> number().

-spec find_value(t(), any(),
                 (element()) -> any()) -> any() | nil.

-spec uniq_by(t(), (element()) -> term()) -> list().

-spec reduce_while(t(), any(),
                   (element(), any()) -> {cont, any()} |
                                         {halt, any()}) -> any().

-spec zip(enumerables) -> [tuple()] when enumerables ::
                                             [t()] | t().

-spec reduce(t(), (element(), acc()) -> acc()) -> acc().

-spec reduce(t(), any(),
             (element(), any()) -> any()) -> any().

-spec each(t(), (element()) -> any()) -> ok.

-spec chunk_every(t(), pos_integer()) -> [list()].

-spec map_every(t(), non_neg_integer(),
                (element()) -> any()) -> list().

-spec scan(t(), any(),
           (element(), any()) -> any()) -> list().

-spec into('Elixir.Enomerable':t(),
           'Elixir.Collectable':t()) -> 'Elixir.Collectable':t().

-spec unzip(t()) -> {[element()], [element()]}.

-spec find(t(), default(),
           (element()) -> any()) -> element() | default().

-spec max(t(), () -> empty_result) -> element() |
                                      empty_result when empty_result :: any().

-spec min_by(t(), (element()) -> any(),
             () -> empty_result) -> element() |
                                    empty_result when empty_result :: any().

-export_type([default/0]).

-type default() :: any().

-export_type([index/0]).

-type index() :: integer().

-export_type([element/0]).

-type element() :: any().

-export_type([acc/0]).

-type acc() :: any().

-export_type([t/0]).

-type t() :: 'Elixir.Enomerable':t().

-export(['__info__'/1, 'all?'/1, 'all?'/2, 'any?'/1,
         'any?'/2, at/2, at/3, chunk/2, chunk/3, chunk/4,
         chunk_by/2, chunk_every/2, chunk_every/3, chunk_every/4,
         chunk_while/4, concat/1, concat/2, count/1, count/2,
         dedup/1, dedup_by/2, drop/2, drop_every/2, drop_while/2,
         each/2, 'empty?'/1, fetch/2, 'fetch!'/2, filter/2,
         filter_map/3, find/2, find/3, find_index/2,
         find_value/2, find_value/3, flat_map/2,
         flat_map_reduce/3, group_by/2, group_by/3,
         intersperse/2, into/2, into/3, join/1, join/2, map/2,
         map_every/3, map_join/2, map_join/3, map_reduce/3,
         max/1, max/2, max_by/2, max_by/3, 'member?'/2, min/1,
         min/2, min_by/2, min_by/3, min_max/1, min_max/2,
         min_max_by/2, min_max_by/3, partition/2, random/1,
         reduce/2, reduce/3, reduce_while/3, reject/2, reverse/1,
         reverse/2, reverse_slice/3, scan/2, scan/3, shuffle/1,
         slice/2, slice/3, sort/1, sort/2, sort_by/2, sort_by/3,
         split/2, split_while/2, split_with/2, sum/1, take/2,
         take_every/2, take_random/2, take_while/2, to_list/1,
         uniq/1, uniq/2, uniq_by/2, unzip/1, with_index/1,
         with_index/2, zip/1, zip/2]).

-spec '__info__'(attributes | compile | functions |
                 macros | md5 | module | deprecated) -> any().

'__info__'(module) -> 'Elixir.Enom';
'__info__'(functions) ->
    [{'all?', 1}, {'all?', 2}, {'any?', 1}, {'any?', 2},
     {at, 2}, {at, 3}, {chunk, 2}, {chunk, 3}, {chunk, 4},
     {chunk_by, 2}, {chunk_every, 2}, {chunk_every, 3},
     {chunk_every, 4}, {chunk_while, 4}, {concat, 1},
     {concat, 2}, {count, 1}, {count, 2}, {dedup, 1},
     {dedup_by, 2}, {drop, 2}, {drop_every, 2},
     {drop_while, 2}, {each, 2}, {'empty?', 1}, {fetch, 2},
     {'fetch!', 2}, {filter, 2}, {filter_map, 3}, {find, 2},
     {find, 3}, {find_index, 2}, {find_value, 2},
     {find_value, 3}, {flat_map, 2}, {flat_map_reduce, 3},
     {group_by, 2}, {group_by, 3}, {intersperse, 2},
     {into, 2}, {into, 3}, {join, 1}, {join, 2}, {map, 2},
     {map_every, 3}, {map_join, 2}, {map_join, 3},
     {map_reduce, 3}, {max, 1}, {max, 2}, {max_by, 2},
     {max_by, 3}, {'member?', 2}, {min, 1}, {min, 2},
     {min_by, 2}, {min_by, 3}, {min_max, 1}, {min_max, 2},
     {min_max_by, 2}, {min_max_by, 3}, {partition, 2},
     {random, 1}, {reduce, 2}, {reduce, 3},
     {reduce_while, 3}, {reject, 2}, {reverse, 1},
     {reverse, 2}, {reverse_slice, 3}, {scan, 2}, {scan, 3},
     {shuffle, 1}, {slice, 2}, {slice, 3}, {sort, 1},
     {sort, 2}, {sort_by, 2}, {sort_by, 3}, {split, 2},
     {split_while, 2}, {split_with, 2}, {sum, 1}, {take, 2},
     {take_every, 2}, {take_random, 2}, {take_while, 2},
     {to_list, 1}, {uniq, 1}, {uniq, 2}, {uniq_by, 2},
     {unzip, 1}, {with_index, 1}, {with_index, 2}, {zip, 1},
     {zip, 2}];
'__info__'(macros) -> [];
'__info__'(Key = attributes) ->
    erlang:get_module_info('Elixir.Enom', Key);
'__info__'(Key = compile) ->
    erlang:get_module_info('Elixir.Enom', Key);
'__info__'(Key = md5) ->
    erlang:get_module_info('Elixir.Enom', Key);
'__info__'(deprecated) ->
    [{{chunk, 2}, <<"Use Enom.chunk_every/2 instead">>},
     {{chunk, 3}, <<"Use Enom.chunk_every/3 instead">>},
     {{chunk, 4}, <<"Use Enom.chunk_every/4 instead">>},
     {{filter_map, 3},
      <<"Use Enom.filter/2 + Enom.map/2 or for "
        "comprehensions instead">>},
     {{partition, 2}, <<"Use Enom.split_with/2 instead">>},
     {{uniq, 2}, <<"Use Enom.uniq_by/2 instead">>}].

aggregate([_head@1 | _tail@1], _fun@1, __empty@1) ->
    aggregate_list(_tail@1, _head@1, _fun@1);
aggregate([], __fun@1, _empty@1) -> _empty@1();
aggregate(#{'__struct__' := 'Elixir.Range',
            first := _first@1, last := _last@1},
          _fun@1, __empty@1) ->
    _fun@1(_first@1, _last@1);
aggregate(_enumerable@1, _fun@1, _empty@1) ->
    _ref@1 = erlang:make_ref(),
    case reduce(_enumerable@1, _ref@1,
                fun (_element@1, _ref@2) when _ref@1 =:= _ref@2 ->
                        _element@1;
                    (_element@2, _acc@1) -> _fun@1(_acc@1, _element@2)
                end)
        of
      _ref@1 -> _empty@1();
      _result@1 -> _result@1
    end.

aggregate_list([_head@1 | _tail@1], _acc@1, _fun@1) ->
    aggregate_list(_tail@1, _fun@1(_acc@1, _head@1),
                   _fun@1);
aggregate_list([], _acc@1, __fun@1) -> _acc@1.

'all?'(__@1) -> 'all?'(__@1, fun (_x@1) -> _x@1 end).

'all?'(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    all_list(_enumerable@1, _fun@1);
'all?'(_enumerable@1, _fun@1) ->
    erlang:element(2,
                   'Elixir.Enomerable':reduce(_enumerable@1,
                                              {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      0,
                                                                                                      cont),
                                               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      1,
                                                                                                      true)},
                                              fun (_entry@1, _) ->
                                                      case _fun@1(_entry@1) of
                                                        __@1
                                                            when __@1 =:= nil
                                                                   orelse
                                                                   __@1 =:=
                                                                     false ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    2,
                                                                                                                    halt),
                                                             'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    3,
                                                                                                                    false)};
                                                        _ ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    4,
                                                                                                                    cont),
                                                             'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    5,
                                                                                                                    true)}
                                                      end
                                              end)).

all_list([_h@1 | _t@1], _fun@1) ->
    case _fun@1(_h@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                 6, false);
      _ -> all_list(_t@1, _fun@1)
    end;
all_list([], _) ->
    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                           7, true).

'any?'(__@1) -> 'any?'(__@1, fun (_x@1) -> _x@1 end).

'any?'(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    any_list(_enumerable@1, _fun@1);
'any?'(_enumerable@1, _fun@1) ->
    erlang:element(2,
                   'Elixir.Enomerable':reduce(_enumerable@1,
                                              {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      8,
                                                                                                      cont),
                                               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      9,
                                                                                                      false)},
                                              fun (_entry@1, _) ->
                                                      case _fun@1(_entry@1) of
                                                        __@1
                                                            when __@1 =:= nil
                                                                   orelse
                                                                   __@1 =:=
                                                                     false ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    10,
                                                                                                                    cont),
                                                             'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    11,
                                                                                                                    false)};
                                                        _ ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    12,
                                                                                                                    halt),
                                                             'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    13,
                                                                                                                    true)}
                                                      end
                                              end)).

any_list([_h@1 | _t@1], _fun@1) ->
    case _fun@1(_h@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          any_list(_t@1, _fun@1);
      _ ->
          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                 14, true)
    end;
any_list([], _) ->
    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                           15, false).

at(__@1, __@2) ->
    at(__@1, __@2,
       'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                              16, nil)).

at(_enumerable@1, _index@1, _default@1) ->
    case slice_any(_enumerable@1, _index@1, 1) of
      [_value@1] -> _value@1;
      [] -> _default@1
    end.

chunk(_enumerable@1, _count@1) ->
    chunk(_enumerable@1, _count@1, _count@1,
          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                 17, nil)).

chunk(_enum@1, _n@1, _step@1) ->
    chunk_every(_enum@1, _n@1, _step@1,
                'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                       18,
                                                                       nil)).

chunk(_enumerable@1, _count@1, _step@1, _leftover@1) ->
    chunk_every(_enumerable@1, _count@1, _step@1,
                case _leftover@1 of
                  __@1 when __@1 =:= nil orelse __@1 =:= false ->
                      'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                             19,
                                                                             discard);
                  __@2 -> __@2
                end).

chunk_by(_enumerable@1, _fun@1) ->
    'Elixir.Stream.Reducers':chunk_by(fun chunk_while/4,
                                      _enumerable@1, _fun@1).

chunk_every(_enumerable@1, _count@1) ->
    chunk_every(_enumerable@1, _count@1, _count@1, []).

chunk_every(__@1, __@2, __@3) ->
    chunk_every(__@1, __@2, __@3, []).

chunk_every(_enumerable@1, _count@1, _step@1,
            _leftover@1)
    when ((erlang:is_integer(_count@1) andalso _count@1 > 0)
            andalso erlang:is_integer(_step@1))
           andalso _step@1 > 0 ->
    'Elixir.Stream.Reducers':chunk_every(fun chunk_while/4,
                                         _enumerable@1, _count@1, _step@1,
                                         _leftover@1).

chunk_while(_enumerable@1, _acc@1, _chunk_fun@1,
            _after_fun@1) ->
    {_, {_res@1, _acc@6}} =
        'Elixir.Enomerable':reduce(_enumerable@1,
                                   {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                           20,
                                                                                           cont),
                                    {[], _acc@1}},
                                   fun (_entry@1, {_buffer@1, _acc@2}) ->
                                           case _chunk_fun@1(_entry@1, _acc@2)
                                               of
                                             {cont, _emit@1, _acc@3} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         21,
                                                                                                         cont),
                                                  {[_emit@1 | _buffer@1],
                                                   _acc@3}};
                                             {cont, _acc@4} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         22,
                                                                                                         cont),
                                                  {_buffer@1, _acc@4}};
                                             {halt, _acc@5} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         23,
                                                                                                         halt),
                                                  {_buffer@1, _acc@5}}
                                           end
                                   end),
    case _after_fun@1(_acc@6) of
      {cont, __acc@1} -> lists:reverse(_res@1);
      {cont, _elem@1, __acc@2} ->
          lists:reverse([_elem@1 | _res@1])
    end.

concat(_enumerables@1) ->
    _fun@1 = fun (__@1, __@2) -> [__@1 | __@2] end,
    lists:reverse(reduce(_enumerables@1, [],
                         fun (__@3, __@4) -> reduce(__@3, __@4, _fun@1) end)).

concat(_left@1, _right@1)
    when erlang:is_list(_left@1) andalso
           erlang:is_list(_right@1) ->
    _left@1 ++ _right@1;
concat(_left@1, _right@1) ->
    concat([_left@1, _right@1]).

count(_enumerable@1)
    when erlang:is_list(_enumerable@1) ->
    erlang:length(_enumerable@1);
count(_enumerable@1) ->
    case 'Elixir.Enomerable':count(_enumerable@1) of
      {ok, _value@1} when erlang:is_integer(_value@1) ->
          _value@1;
      {error, _module@1} ->
          erlang:element(2,
                         _module@1:reduce(_enumerable@1,
                                          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                  24,
                                                                                                  cont),
                                           0},
                                          fun (_, _acc@1) ->
                                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          25,
                                                                                                          cont),
                                                   'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                           26,
                                                                                                           _acc@1,
                                                                                                           1)}
                                          end))
    end.

count(_enumerable@1, _fun@1) ->
    reduce(_enumerable@1, 0,
           fun (_entry@1, _acc@1) ->
                   case _fun@1(_entry@1) of
                     __@1 when __@1 =:= nil orelse __@1 =:= false -> _acc@1;
                     _ ->
                         'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                 27,
                                                                                 _acc@1,
                                                                                 1)
                   end
           end).

dedup(_enumerable@1) ->
    dedup_by(_enumerable@1, fun (_x@1) -> _x@1 end).

dedup_by(_enumerable@1, _fun@1) ->
    {_list@1, _} = reduce(_enumerable@1, {[], []},
                          fun (__@1, {__@3, __@4} = __@2) ->
                                  __@5 = _fun@1(__@1),
                                  case __@4 of
                                    {value, __@5} -> __@2;
                                    _ ->
                                        {[__@1 | __@3],
                                         {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                 28,
                                                                                                 value),
                                          __@5}}
                                  end
                          end),
    lists:reverse(_list@1).

drop(_enumerable@1, _amount@1)
    when (erlang:is_list(_enumerable@1) andalso
            erlang:is_integer(_amount@1))
           andalso _amount@1 >= 0 ->
    drop_list(_enumerable@1, _amount@1);
drop(_enumerable@1, _amount@1)
    when erlang:is_integer(_amount@1) andalso
           _amount@1 >= 0 ->
    {_result@1, _} = reduce(_enumerable@1, {[], _amount@1},
                            fun (__@1, {__@2, __@3}) when __@3 > 0 ->
                                    {__@2,
                                     'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                             29,
                                                                                             __@3,
                                                                                             1)};
                                (__@4, {__@5, __@6}) -> {[__@4 | __@5], __@6}
                            end),
    case erlang:is_list(_result@1) of
      false -> [];
      true -> lists:reverse(_result@1)
    end;
drop(_enumerable@1, _amount@1)
    when erlang:is_integer(_amount@1) andalso
           _amount@1 < 0 ->
    {_count@1, _fun@1} = slice_count_and_fun(_enumerable@1),
    _amount@2 =
        erlang:min('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                           30,
                                                                           _amount@1,
                                                                           _count@1),
                   _count@1),
    case
      'Elixir.Darwin.Mutators.Default.OpGreaterThanMutator':do_mutate('Elixir.Enom',
                                                                      31,
                                                                      _amount@2,
                                                                      0)
        of
      false -> [];
      true -> _fun@1(0, _amount@2)
    end.

drop_every(__enumerable@1, 1) -> [];
drop_every(_enumerable@1, 0) -> to_list(_enumerable@1);
drop_every([], _nth@1) when erlang:is_integer(_nth@1) ->
    [];
drop_every(_enumerable@1, _nth@1)
    when erlang:is_integer(_nth@1) andalso _nth@1 > 1 ->
    {_res@1, _} = reduce(_enumerable@1,
                         {[],
                          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                 32,
                                                                                 first)},
                         fun (__@1, {__@2, __@3})
                                 when __@3 =:= first orelse __@3 =:= _nth@1 ->
                                 {__@2, 1};
                             (__@4, {__@5, __@6}) ->
                                 {[__@4 | __@5],
                                  'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                          33,
                                                                                          __@6,
                                                                                          1)}
                         end),
    lists:reverse(_res@1).

drop_list(_list@1, 0) -> _list@1;
drop_list([_ | _tail@1], _counter@1) ->
    drop_list(_tail@1,
              'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                      34,
                                                                      _counter@1,
                                                                      1));
drop_list([], _) -> [].

drop_while(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    drop_while_list(_enumerable@1, _fun@1);
drop_while(_enumerable@1, _fun@1) ->
    {_res@1, _} = reduce(_enumerable@1,
                         {[],
                          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                 35,
                                                                                 true)},
                         fun (__@1, {__@3, __@4} = __@2) ->
                                 case
                                   'Elixir.Darwin.Mutators.Default.OpStrictAndMutator':do_mutate('Elixir.Enom',
                                                                                                 36,
                                                                                                 __@4,
                                                                                                 _fun@1(__@1))
                                     of
                                   __@6
                                       when __@6 =:= nil orelse
                                              __@6 =:= false ->
                                       {[__@1 | __@3],
                                        'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                               37,
                                                                                               false)};
                                   _ -> __@2
                                 end
                         end),
    lists:reverse(_res@1).

drop_while_list([_head@1 | _tail@1], _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          [_head@1 | _tail@1];
      _ -> drop_while_list(_tail@1, _fun@1)
    end;
drop_while_list([], _) -> [].

each(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    lists:foreach(_fun@1, _enumerable@1),
    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                           38, ok);
each(_enumerable@1, _fun@1) ->
    reduce(_enumerable@1,
           'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                  39, nil),
           fun (_entry@1, _) ->
                   _fun@1(_entry@1),
                   'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                          40,
                                                                          nil)
           end),
    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                           41, ok).

'empty?'(_enumerable@1)
    when erlang:is_list(_enumerable@1) ->
    'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                42,
                                                                _enumerable@1,
                                                                []);
'empty?'(_enumerable@1) ->
    case 'Elixir.Enomerable':slice(_enumerable@1) of
      {ok, _value@1, _} ->
          'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                      43,
                                                                      _value@1,
                                                                      0);
      {error, _module@1} ->
          erlang:element(2,
                         _module@1:reduce(_enumerable@1,
                                          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                  44,
                                                                                                  cont),
                                           'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                  45,
                                                                                                  true)},
                                          fun (_, _) ->
                                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          46,
                                                                                                          halt),
                                                   'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          47,
                                                                                                          false)}
                                          end))
    end.

entry_to_string(_entry@1)
    when erlang:is_binary(_entry@1) ->
    _entry@1;
entry_to_string(_entry@1) ->
    case _entry@1 of
      _rewrite@1 when erlang:is_binary(_rewrite@1) ->
          _rewrite@1;
      _rewrite@1 ->
          'Elixir.String.Chars':to_string(_rewrite@1)
    end.

fetch(_enumerable@1, _index@1) ->
    case slice_any(_enumerable@1, _index@1, 1) of
      [_value@1] ->
          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                  48, ok),
           _value@1};
      [] ->
          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                 49, error)
    end.

'fetch!'(_enumerable@1, _index@1) ->
    case slice_any(_enumerable@1, _index@1, 1) of
      [_value@1] -> _value@1;
      [] ->
          erlang:error('Elixir.Enom.OutOfBoundsError':exception([]))
    end.

filter(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    filter_list(_enumerable@1, _fun@1);
filter(_enumerable@1, _fun@1) ->
    lists:reverse(reduce(_enumerable@1, [],
                         fun (__@1, __@2) ->
                                 case _fun@1(__@1) of
                                   __@3
                                       when __@3 =:= nil orelse
                                              __@3 =:= false ->
                                       __@2;
                                   _ -> [__@1 | __@2]
                                 end
                         end)).

filter_list([_head@1 | _tail@1], _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          filter_list(_tail@1, _fun@1);
      _ -> [_head@1 | filter_list(_tail@1, _fun@1)]
    end;
filter_list([], __fun@1) -> [].

filter_map(_enumerable@1, _filter@1, _mapper@1)
    when erlang:is_list(_enumerable@1) ->
    lists:reverse('Elixir.Enum':reduce(_enumerable@1, [],
                                       fun (_element@1, __@2) ->
                                               case _filter@1(_element@1) of
                                                 __@1
                                                     when __@1 == false;
                                                          __@1 == nil ->
                                                     __@2;
                                                 _ ->
                                                     [_mapper@1(_element@1)
                                                      | __@2]
                                               end
                                       end));
filter_map(_enumerable@1, _filter@1, _mapper@1) ->
    lists:reverse(reduce(_enumerable@1, [],
                         fun (__@1, __@2) ->
                                 case _filter@1(__@1) of
                                   __@3
                                       when __@3 =:= nil orelse
                                              __@3 =:= false ->
                                       __@2;
                                   _ -> [_mapper@1(__@1) | __@2]
                                 end
                         end)).

find(__@1, __@2) ->
    find(__@1,
         'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                50, nil),
         __@2).

find(_enumerable@1, _default@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    find_list(_enumerable@1, _default@1, _fun@1);
find(_enumerable@1, _default@1, _fun@1) ->
    erlang:element(2,
                   'Elixir.Enomerable':reduce(_enumerable@1,
                                              {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      51,
                                                                                                      cont),
                                               _default@1},
                                              fun (_entry@1, _default@2) ->
                                                      case _fun@1(_entry@1) of
                                                        __@1
                                                            when __@1 =:= nil
                                                                   orelse
                                                                   __@1 =:=
                                                                     false ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    52,
                                                                                                                    cont),
                                                             _default@2};
                                                        _ ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    53,
                                                                                                                    halt),
                                                             _entry@1}
                                                      end
                                              end)).

find_index(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    find_index_list(_enumerable@1, 0, _fun@1);
find_index(_enumerable@1, _fun@1) ->
    _result@1 = 'Elixir.Enomerable':reduce(_enumerable@1,
                                           {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                   54,
                                                                                                   cont),
                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                    55,
                                                                                                    not_found),
                                             0}},
                                           fun (_entry@1, {_, _index@1}) ->
                                                   case _fun@1(_entry@1) of
                                                     __@1
                                                         when __@1 =:= nil
                                                                orelse
                                                                __@1 =:=
                                                                  false ->
                                                         {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                 56,
                                                                                                                 cont),
                                                          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                  57,
                                                                                                                  not_found),
                                                           'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                   58,
                                                                                                                   _index@1,
                                                                                                                   1)}};
                                                     _ ->
                                                         {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                 59,
                                                                                                                 halt),
                                                          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                  60,
                                                                                                                  found),
                                                           _index@1}}
                                                   end
                                           end),
    case erlang:element(2, _result@1) of
      {found, _index@2} -> _index@2;
      {not_found, _} ->
          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                 61, nil)
    end.

find_index_list([_head@1 | _tail@1], _counter@1,
                _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          find_index_list(_tail@1,
                          'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                  62,
                                                                                  _counter@1,
                                                                                  1),
                          _fun@1);
      _ -> _counter@1
    end;
find_index_list([], _, _) ->
    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                           63, nil).

find_list([_head@1 | _tail@1], _default@1, _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          find_list(_tail@1, _default@1, _fun@1);
      _ -> _head@1
    end;
find_list([], _default@1, _) -> _default@1.

find_value(__@1, __@2) ->
    find_value(__@1,
               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                      64, nil),
               __@2).

find_value(_enumerable@1, _default@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    find_value_list(_enumerable@1, _default@1, _fun@1);
find_value(_enumerable@1, _default@1, _fun@1) ->
    erlang:element(2,
                   'Elixir.Enomerable':reduce(_enumerable@1,
                                              {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      65,
                                                                                                      cont),
                                               _default@1},
                                              fun (_entry@1, _default@2) ->
                                                      _fun_entry@1 =
                                                          _fun@1(_entry@1),
                                                      case _fun_entry@1 of
                                                        __@1
                                                            when __@1 =:= nil
                                                                   orelse
                                                                   __@1 =:=
                                                                     false ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    66,
                                                                                                                    cont),
                                                             _default@2};
                                                        _ ->
                                                            {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                    67,
                                                                                                                    halt),
                                                             _fun_entry@1}
                                                      end
                                              end)).

find_value_list([_head@1 | _tail@1], _default@1,
                _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          find_value_list(_tail@1, _default@1, _fun@1);
      __@2 -> __@2
    end;
find_value_list([], _default@1, _) -> _default@1.

flat_map(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    flat_map_list(_enumerable@1, _fun@1);
flat_map(_enumerable@1, _fun@1) ->
    lists:reverse(reduce(_enumerable@1, [],
                         fun (_entry@1, _acc@1) ->
                                 case _fun@1(_entry@1) of
                                   _list@1 when erlang:is_list(_list@1) ->
                                       lists:reverse(_list@1, _acc@1);
                                   _other@1 ->
                                       reduce(_other@1, _acc@1,
                                              fun (__@1, __@2) -> [__@1 | __@2]
                                              end)
                                 end
                         end)).

flat_map_list([_head@1 | _tail@1], _fun@1) ->
    case _fun@1(_head@1) of
      _list@1 when erlang:is_list(_list@1) ->
          _list@1 ++ flat_map_list(_tail@1, _fun@1);
      _other@1 ->
          to_list(_other@1) ++ flat_map_list(_tail@1, _fun@1)
    end;
flat_map_list([], __fun@1) -> [].

flat_map_reduce(_enumerable@1, _acc@1, _fun@1) ->
    {_, {_list@2, _acc@7}} =
        'Elixir.Enomerable':reduce(_enumerable@1,
                                   {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                           68,
                                                                                           cont),
                                    {[], _acc@1}},
                                   fun (_entry@1, {_list@1, _acc@2}) ->
                                           case _fun@1(_entry@1, _acc@2) of
                                             {halt, _acc@3} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         69,
                                                                                                         halt),
                                                  {_list@1, _acc@3}};
                                             {[], _acc@4} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         70,
                                                                                                         cont),
                                                  {_list@1, _acc@4}};
                                             {[_entry@2], _acc@5} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         71,
                                                                                                         cont),
                                                  {[_entry@2 | _list@1],
                                                   _acc@5}};
                                             {_entries@1, _acc@6} ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         72,
                                                                                                         cont),
                                                  {reduce(_entries@1, _list@1,
                                                          fun (__@1, __@2) ->
                                                                  [__@1 | __@2]
                                                          end),
                                                   _acc@6}}
                                           end
                                   end),
    {lists:reverse(_list@2), _acc@7}.

group_by(__@1, __@2) ->
    group_by(__@1, __@2, fun (_x@1) -> _x@1 end).

group_by(_enumerable@1, _key_fun@1, _value_fun@1)
    when erlang:is_function(_key_fun@1) ->
    reduce(reverse(_enumerable@1), #{},
           fun (_entry@1, _acc@1) ->
                   _key@1 = _key_fun@1(_entry@1),
                   _value@1 = _value_fun@1(_entry@1),
                   case _acc@1 of
                     #{_key@1 := _existing@1} ->
                         maps:put(_key@1, [_value@1 | _existing@1], _acc@1);
                     #{} -> maps:put(_key@1, [_value@1], _acc@1)
                   end
           end);
group_by(_enumerable@1, _dict@1, _fun@1) ->
    'Elixir.IO':warn(<<"Enom.group_by/3 with a map/dictionary "
                       "as second element is deprecated. ",
                       "A map is used by default and it is no "
                       "longer required to pass one to this "
                       "function">>),
    _dict_module@1 =
        'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                               73,
                                                               'Elixir.Dict'),
    reduce(reverse(_enumerable@1), _dict@1,
           fun (_entry@1, _categories@1) ->
                   _dict_module@1:update(_categories@1, _fun@1(_entry@1),
                                         [_entry@1],
                                         fun (__@1) -> [_entry@1 | __@1] end)
           end).

head_slice(_rest@1, 0, _acc@1) -> {_acc@1, _rest@1};
head_slice([_elem@1 | _rest@1], _count@1, _acc@1) ->
    head_slice(_rest@1,
               'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                       74,
                                                                       _count@1,
                                                                       1),
               [_elem@1 | _acc@1]).

intersperse(_enumerable@1, _element@1) ->
    _list@1 = lists:reverse(reduce(_enumerable@1, [],
                                   fun (_x@1, _acc@1) ->
                                           [_x@1, _element@1 | _acc@1]
                                   end)),
    case _list@1 of
      [] -> [];
      [_ | _t@1] -> _t@1
    end.

into(_enumerable@1, []) -> to_list(_enumerable@1);
into(#{'__struct__' := __@1 = _} = _enumerable@1,
     _collectable@1)
    when erlang:is_atom(__@1) ->
    into_protocol(_enumerable@1, _collectable@1);
into(_enumerable@1,
     #{'__struct__' := __@1 = _} = _collectable@1)
    when erlang:is_atom(__@1) ->
    into_protocol(_enumerable@1, _collectable@1);
into(#{} = _enumerable@1, #{} = _collectable@1) ->
    maps:merge(_collectable@1, _enumerable@1);
into(_enumerable@1, #{} = _collectable@1)
    when erlang:is_list(_enumerable@1) ->
    maps:merge(_collectable@1,
               maps:from_list(_enumerable@1));
into(_enumerable@1, #{} = _collectable@1) ->
    reduce(_enumerable@1, _collectable@1,
           fun ({_key@1, _val@1}, _acc@1) ->
                   maps:put(_key@1, _val@1, _acc@1)
           end);
into(_enumerable@1, _collectable@1) ->
    into_protocol(_enumerable@1, _collectable@1).

into(_enumerable@1, _collectable@1, _transform@1)
    when erlang:is_list(_collectable@1) ->
    _collectable@1 ++ map(_enumerable@1, _transform@1);
into(_enumerable@1, _collectable@1, _transform@1) ->
    {_initial@1, _fun@1} =
        'Elixir.Collectable':into(_collectable@1),
    into(_enumerable@1, _initial@1, _fun@1,
         fun (_entry@1, _acc@1) ->
                 _fun@1(_acc@1,
                        {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                75,
                                                                                cont),
                         _transform@1(_entry@1)})
         end).

into(_enumerable@1, _initial@1, _fun@1, _callback@1) ->
    try reduce(_enumerable@1, _initial@1, _callback@1) of
      _acc@1 ->
          _fun@1(_acc@1,
                 'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                        76,
                                                                        done))
    catch
      _kind@1:_reason@1:___STACKTRACE__@1 ->
          _fun@1(_initial@1,
                 'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                        77,
                                                                        halt)),
          erlang:raise(_kind@1, _reason@1, ___STACKTRACE__@1)
    end.

into_protocol(_enumerable@1, _collectable@1) ->
    {_initial@1, _fun@1} =
        'Elixir.Collectable':into(_collectable@1),
    into(_enumerable@1, _initial@1, _fun@1,
         fun (_entry@1, _acc@1) ->
                 _fun@1(_acc@1,
                        {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                78,
                                                                                cont),
                         _entry@1})
         end).

join(__@1) -> join(__@1, <<>>).

join(_enumerable@1, _joiner@1)
    when erlang:is_binary(_joiner@1) ->
    _reduced@1 = reduce(_enumerable@1,
                        'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                               79,
                                                                               first),
                        fun (_entry@1, first) -> entry_to_string(_entry@1);
                            (_entry@2, _acc@1) ->
                                [_acc@1, _joiner@1 | entry_to_string(_entry@2)]
                        end),
    case
      'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                  81,
                                                                  _reduced@1,
                                                                  'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                         80,
                                                                                                                         first))
        of
      false -> erlang:iolist_to_binary(_reduced@1);
      true -> <<>>
    end.

map(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    lists:map(_fun@1, _enumerable@1);
map(_enumerable@1, _fun@1) ->
    lists:reverse(reduce(_enumerable@1, [],
                         fun (__@1, __@2) -> [_fun@1(__@1) | __@2] end)).

map_every(_enumerable@1, 1, _fun@1) ->
    map(_enumerable@1, _fun@1);
map_every(_enumerable@1, 0, __fun@1) ->
    to_list(_enumerable@1);
map_every([], _nth@1, __fun@1)
    when erlang:is_integer(_nth@1) andalso _nth@1 > 1 ->
    [];
map_every(_enumerable@1, _nth@1, _fun@1)
    when erlang:is_integer(_nth@1) andalso _nth@1 > 1 ->
    {_res@1, _} = reduce(_enumerable@1,
                         {[],
                          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                 82,
                                                                                 first)},
                         fun (__@1, {__@2, __@3})
                                 when __@3 =:= first orelse __@3 =:= _nth@1 ->
                                 {[_fun@1(__@1) | __@2], 1};
                             (__@4, {__@5, __@6}) ->
                                 {[__@4 | __@5],
                                  'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                          83,
                                                                                          __@6,
                                                                                          1)}
                         end),
    lists:reverse(_res@1).

map_join(__@1, __@2) -> map_join(__@1, <<>>, __@2).

map_join(_enumerable@1, _joiner@1, _mapper@1)
    when erlang:is_binary(_joiner@1) ->
    _reduced@1 = reduce(_enumerable@1,
                        'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                               84,
                                                                               first),
                        fun (_entry@1, first) ->
                                entry_to_string(_mapper@1(_entry@1));
                            (_entry@2, _acc@1) ->
                                [_acc@1, _joiner@1
                                 | entry_to_string(_mapper@1(_entry@2))]
                        end),
    case
      'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                  86,
                                                                  _reduced@1,
                                                                  'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                         85,
                                                                                                                         first))
        of
      false -> erlang:iolist_to_binary(_reduced@1);
      true -> <<>>
    end.

map_reduce(_enumerable@1, _acc@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    lists:mapfoldl(_fun@1, _acc@1, _enumerable@1);
map_reduce(_enumerable@1, _acc@1, _fun@1) ->
    {_list@2, _acc@4} = reduce(_enumerable@1, {[], _acc@1},
                               fun (_entry@1, {_list@1, _acc@2}) ->
                                       {_new_entry@1, _acc@3} = _fun@1(_entry@1,
                                                                       _acc@2),
                                       {[_new_entry@1 | _list@1], _acc@3}
                               end),
    {lists:reverse(_list@2), _acc@4}.

max(__@1) ->
    max(__@1,
        fun () ->
                erlang:error('Elixir.Enom.EmptyError':exception([]))
        end).

max(_enumerable@1, _empty_fallback@1)
    when erlang:is_function(_empty_fallback@1, 0) ->
    aggregate(_enumerable@1, fun erlang:max/2,
              _empty_fallback@1).

max_by(__@1, __@2) ->
    max_by(__@1, __@2,
           fun () ->
                   erlang:error('Elixir.Enom.EmptyError':exception([]))
           end).

max_by(_enumerable@1, _fun@1, _empty_fallback@1)
    when erlang:is_function(_fun@1, 1) andalso
           erlang:is_function(_empty_fallback@1, 0) ->
    _first_fun@1 = fun (__@1) -> {__@1, _fun@1(__@1)} end,
    _reduce_fun@1 = fun (_entry@1,
                         {_, _fun_max@1} = _old@1) ->
                            _fun_entry@1 = _fun@1(_entry@1),
                            case
                              'Elixir.Darwin.Mutators.Default.OpGreaterThanMutator':do_mutate('Elixir.Enom',
                                                                                              87,
                                                                                              _fun_entry@1,
                                                                                              _fun_max@1)
                                of
                              false -> _old@1;
                              true -> {_entry@1, _fun_entry@1}
                            end
                    end,
    case reduce_by(_enumerable@1, _first_fun@1,
                   _reduce_fun@1)
        of
      empty -> _empty_fallback@1();
      {_entry@2, _} -> _entry@2
    end.

'member?'(_enumerable@1, _element@1)
    when erlang:is_list(_enumerable@1) ->
    lists:member(_element@1, _enumerable@1);
'member?'(_enumerable@1, _element@1) ->
    case 'Elixir.Enomerable':'member?'(_enumerable@1,
                                       _element@1)
        of
      {ok, _element@2} when erlang:is_boolean(_element@2) ->
          _element@2;
      {error, _module@1} ->
          erlang:element(2,
                         _module@1:reduce(_enumerable@1,
                                          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                  88,
                                                                                                  cont),
                                           'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                  89,
                                                                                                  false)},
                                          fun (_v@1, _)
                                                  when _v@1 =:= _element@1 ->
                                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          90,
                                                                                                          halt),
                                                   'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          91,
                                                                                                          true)};
                                              (_, _) ->
                                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          92,
                                                                                                          cont),
                                                   'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                          93,
                                                                                                          false)}
                                          end))
    end.

min(__@1) ->
    min(__@1,
        fun () ->
                erlang:error('Elixir.Enom.EmptyError':exception([]))
        end).

min(_enumerable@1, _empty_fallback@1)
    when erlang:is_function(_empty_fallback@1, 0) ->
    aggregate(_enumerable@1, fun erlang:min/2,
              _empty_fallback@1).

min_by(__@1, __@2) ->
    min_by(__@1, __@2,
           fun () ->
                   erlang:error('Elixir.Enom.EmptyError':exception([]))
           end).

min_by(_enumerable@1, _fun@1, _empty_fallback@1)
    when erlang:is_function(_fun@1, 1) andalso
           erlang:is_function(_empty_fallback@1, 0) ->
    _first_fun@1 = fun (__@1) -> {__@1, _fun@1(__@1)} end,
    _reduce_fun@1 = fun (_entry@1,
                         {_, _fun_min@1} = _old@1) ->
                            _fun_entry@1 = _fun@1(_entry@1),
                            case
                              'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                           94,
                                                                                           _fun_entry@1,
                                                                                           _fun_min@1)
                                of
                              false -> _old@1;
                              true -> {_entry@1, _fun_entry@1}
                            end
                    end,
    case reduce_by(_enumerable@1, _first_fun@1,
                   _reduce_fun@1)
        of
      empty -> _empty_fallback@1();
      {_entry@2, _} -> _entry@2
    end.

min_max(__@1) ->
    min_max(__@1,
            fun () ->
                    erlang:error('Elixir.Enom.EmptyError':exception([]))
            end).

min_max(#{'__struct__' := 'Elixir.Range',
          first := _first@1, last := _last@1},
        _empty_fallback@1)
    when erlang:is_function(_empty_fallback@1, 0) ->
    {erlang:min(_first@1, _last@1),
     erlang:max(_first@1, _last@1)};
min_max(_enumerable@1, _empty_fallback@1)
    when erlang:is_function(_empty_fallback@1, 0) ->
    _first_fun@1 = fun (__@1) -> {__@1, __@1} end,
    _reduce_fun@1 = fun (_entry@1, {_min@1, _max@1}) ->
                            {erlang:min(_min@1, _entry@1),
                             erlang:max(_max@1, _entry@1)}
                    end,
    case reduce_by(_enumerable@1, _first_fun@1,
                   _reduce_fun@1)
        of
      empty -> _empty_fallback@1();
      _entry@2 -> _entry@2
    end.

min_max_by(__@1, __@2) ->
    min_max_by(__@1, __@2,
               fun () ->
                       erlang:error('Elixir.Enom.EmptyError':exception([]))
               end).

min_max_by(_enumerable@1, _fun@1, _empty_fallback@1)
    when erlang:is_function(_fun@1, 1) andalso
           erlang:is_function(_empty_fallback@1, 0) ->
    _first_fun@1 = fun (_entry@1) ->
                           _fun_entry@1 = _fun@1(_entry@1),
                           {{_entry@1, _entry@1}, {_fun_entry@1, _fun_entry@1}}
                   end,
    _reduce_fun@1 = fun (_entry@2,
                         {{_prev_min@1, _prev_max@1},
                          {_fun_min@1, _fun_max@1}} =
                             _acc@1) ->
                            _fun_entry@2 = _fun@1(_entry@2),
                            case
                              'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                           95,
                                                                                           _fun_entry@2,
                                                                                           _fun_min@1)
                                of
                              true ->
                                  {{_entry@2, _prev_max@1},
                                   {_fun_entry@2, _fun_max@1}};
                              false ->
                                  case
                                    'Elixir.Darwin.Mutators.Default.OpGreaterThanMutator':do_mutate('Elixir.Enom',
                                                                                                    96,
                                                                                                    _fun_entry@2,
                                                                                                    _fun_max@1)
                                      of
                                    true ->
                                        {{_prev_min@1, _entry@2},
                                         {_fun_min@1, _fun_entry@2}};
                                    false -> _acc@1
                                  end
                            end
                    end,
    case reduce_by(_enumerable@1, _first_fun@1,
                   _reduce_fun@1)
        of
      empty -> _empty_fallback@1();
      {_entry@3, _} -> _entry@3
    end.

partition(_enumerable@1, _fun@1) ->
    split_with(_enumerable@1, _fun@1).

random(_enumerable@1)
    when erlang:is_list(_enumerable@1) ->
    case take_random(_enumerable@1, 1) of
      [] ->
          erlang:error('Elixir.Enom.EmptyError':exception([]));
      [_elem@1] -> _elem@1
    end;
random(_enumerable@1) ->
    _result@1 = case
                  'Elixir.Enomerable':slice(_enumerable@1)
                    of
                  {ok, 0, _} -> [];
                  {ok, _count@1, _fun@1}
                      when erlang:is_function(_fun@1) ->
                      _fun@1(random_integer(0,
                                            'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                    97,
                                                                                                    _count@1,
                                                                                                    1)),
                             1);
                  {error, _} -> take_random(_enumerable@1, 1)
                end,
    case _result@1 of
      [] ->
          erlang:error('Elixir.Enom.EmptyError':exception([]));
      [_elem@1] -> _elem@1
    end.

random_integer(_limit@1, _limit@1)
    when erlang:is_integer(_limit@1) ->
    _limit@1;
random_integer(_lower_limit@1, _upper_limit@1)
    when _upper_limit@1 < _lower_limit@1 ->
    random_integer(_upper_limit@1, _lower_limit@1);
random_integer(_lower_limit@1, _upper_limit@1) ->
    'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                            101,
                                                            'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                    100,
                                                                                                                    _lower_limit@1,
                                                                                                                    rand:uniform('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                                                                                         99,
                                                                                                                                                                                         'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                                                                                                                                                                 98,
                                                                                                                                                                                                                                                 _upper_limit@1,
                                                                                                                                                                                                                                                 _lower_limit@1),
                                                                                                                                                                                         1))),
                                                            1).

reduce([_h@1 | _t@1], _fun@1) ->
    reduce(_t@1, _h@1, _fun@1);
reduce([], __fun@1) ->
    erlang:error('Elixir.Enom.EmptyError':exception([]));
reduce(_enumerable@1, _fun@1) ->
    _result@1 = erlang:element(2,
                               'Elixir.Enomerable':reduce(_enumerable@1,
                                                          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                  102,
                                                                                                                  cont),
                                                           'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                  103,
                                                                                                                  first)},
                                                          fun (_x@1, first) ->
                                                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                          104,
                                                                                                                          cont),
                                                                   {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                           105,
                                                                                                                           acc),
                                                                    _x@1}};
                                                              (_x@2,
                                                               {acc, _acc@1}) ->
                                                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                          106,
                                                                                                                          cont),
                                                                   {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                           107,
                                                                                                                           acc),
                                                                    _fun@1(_x@2,
                                                                           _acc@1)}}
                                                          end)),
    case _result@1 of
      first ->
          erlang:error('Elixir.Enom.EmptyError':exception([]));
      {acc, _acc@2} -> _acc@2
    end.

reduce(_enumerable@1, _acc@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    lists:foldl(_fun@1, _acc@1, _enumerable@1);
reduce(#{'__struct__' := 'Elixir.Range',
         first := _first@1, last := _last@1},
       _acc@1, _fun@1) ->
    case _first@1 =< _last@1 of
      false ->
          reduce_range_dec(_first@1, _last@1, _acc@1, _fun@1);
      true ->
          reduce_range_inc(_first@1, _last@1, _acc@1, _fun@1)
    end;
reduce(#{'__struct__' := __@1 = _} = _enumerable@1,
       _acc@1, _fun@1)
    when erlang:is_atom(__@1) ->
    reduce_enumerable(_enumerable@1, _acc@1, _fun@1);
reduce(#{} = _enumerable@1, _acc@1, _fun@1) ->
    maps:fold(fun (_k@1, _v@1, _acc@2) ->
                      _fun@1({_k@1, _v@1}, _acc@2)
              end,
              _acc@1, _enumerable@1);
reduce(_enumerable@1, _acc@1, _fun@1) ->
    reduce_enumerable(_enumerable@1, _acc@1, _fun@1).

reduce_by([_head@1 | _tail@1], _first@1, _fun@1) ->
    lists:foldl(_fun@1, _first@1(_head@1), _tail@1);
reduce_by([], __first@1, __fun@1) ->
    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                           108, empty);
reduce_by(_enumerable@1, _first@1, _fun@1) ->
    reduce(_enumerable@1,
           'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                  109, empty),
           fun (_element@1, {_, _} = _acc@1) ->
                   _fun@1(_element@1, _acc@1);
               (_element@2, empty) -> _first@1(_element@2)
           end).

reduce_enumerable(_enumerable@1, _acc@1, _fun@1) ->
    erlang:element(2,
                   'Elixir.Enomerable':reduce(_enumerable@1,
                                              {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      110,
                                                                                                      cont),
                                               _acc@1},
                                              fun (_x@1, _acc@2) ->
                                                      {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                              111,
                                                                                                              cont),
                                                       _fun@1(_x@1, _acc@2)}
                                              end)).

reduce_range_dec(_first@1, _first@1, _acc@1, _fun@1) ->
    _fun@1(_first@1, _acc@1);
reduce_range_dec(_first@1, _last@1, _acc@1, _fun@1) ->
    reduce_range_dec('Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                             112,
                                                                             _first@1,
                                                                             1),
                     _last@1, _fun@1(_first@1, _acc@1), _fun@1).

reduce_range_inc(_first@1, _first@1, _acc@1, _fun@1) ->
    _fun@1(_first@1, _acc@1);
reduce_range_inc(_first@1, _last@1, _acc@1, _fun@1) ->
    reduce_range_inc('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                             113,
                                                                             _first@1,
                                                                             1),
                     _last@1, _fun@1(_first@1, _acc@1), _fun@1).

reduce_while(_enumerable@1, _acc@1, _fun@1) ->
    erlang:element(2,
                   'Elixir.Enomerable':reduce(_enumerable@1,
                                              {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                      114,
                                                                                                      cont),
                                               _acc@1},
                                              _fun@1)).

reject(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    reject_list(_enumerable@1, _fun@1);
reject(_enumerable@1, _fun@1) ->
    lists:reverse(reduce(_enumerable@1, [],
                         fun (__@1, __@2) ->
                                 case _fun@1(__@1) of
                                   __@3
                                       when __@3 =:= nil orelse
                                              __@3 =:= false ->
                                       [__@1 | __@2];
                                   _ -> __@2
                                 end
                         end)).

reject_list([_head@1 | _tail@1], _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          [_head@1 | reject_list(_tail@1, _fun@1)];
      _ -> reject_list(_tail@1, _fun@1)
    end;
reject_list([], __fun@1) -> [].

reverse([]) -> [];
reverse([_] = _list@1) -> _list@1;
reverse([_element1@1, _element2@1]) ->
    [_element2@1, _element1@1];
reverse([_element1@1, _element2@1 | _rest@1]) ->
    lists:reverse(_rest@1, [_element2@1, _element1@1]);
reverse(_enumerable@1) ->
    reduce(_enumerable@1, [],
           fun (__@1, __@2) -> [__@1 | __@2] end).

reverse(_enumerable@1, _tail@1)
    when erlang:is_list(_enumerable@1) ->
    lists:reverse(_enumerable@1, to_list(_tail@1));
reverse(_enumerable@1, _tail@1) ->
    reduce(_enumerable@1, to_list(_tail@1),
           fun (_entry@1, _acc@1) -> [_entry@1 | _acc@1] end).

reverse_slice(_enumerable@1, _start_index@1, _count@1)
    when ((erlang:is_integer(_start_index@1) andalso
             _start_index@1 >= 0)
            andalso erlang:is_integer(_count@1))
           andalso _count@1 >= 0 ->
    _list@1 = reverse(_enumerable@1),
    _length@1 = erlang:length(_list@1),
    _count@2 = erlang:min(_count@1,
                          'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                  115,
                                                                                  _length@1,
                                                                                  _start_index@1)),
    case
      'Elixir.Darwin.Mutators.Default.OpGreaterThanMutator':do_mutate('Elixir.Enom',
                                                                      116,
                                                                      _count@2,
                                                                      0)
        of
      false -> lists:reverse(_list@1);
      true ->
          reverse_slice(_list@1, _length@1,
                        'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                117,
                                                                                _start_index@1,
                                                                                _count@2),
                        _count@2, [])
    end.

reverse_slice(_rest@1, _idx@1, _idx@1, _count@1,
              _acc@1) ->
    {_slice@1, _rest@2} = head_slice(_rest@1, _count@1, []),
    lists:reverse(_rest@2, lists:reverse(_slice@1, _acc@1));
reverse_slice([_elem@1 | _rest@1], _idx@1, _start@1,
              _count@1, _acc@1) ->
    reverse_slice(_rest@1,
                  'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                          118,
                                                                          _idx@1,
                                                                          1),
                  _start@1, _count@1, [_elem@1 | _acc@1]).

reverse_sort_merge([[_h2@1 | _t2@1], _t1@1 | _l@1],
                   _acc@1, _fun@1, true) ->
    reverse_sort_merge(_l@1,
                       [sort_merge1(_t1@1, _h2@1, _t2@1, [], _fun@1,
                                    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                           119,
                                                                                           true))
                        | _acc@1],
                       _fun@1,
                       'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              120,
                                                                              true));
reverse_sort_merge([_t1@1, [_h2@1 | _t2@1] | _l@1],
                   _acc@1, _fun@1, false) ->
    reverse_sort_merge(_l@1,
                       [sort_merge1(_t1@1, _h2@1, _t2@1, [], _fun@1,
                                    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                           121,
                                                                                           true))
                        | _acc@1],
                       _fun@1,
                       'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              122,
                                                                              false));
reverse_sort_merge([_l@1], _acc@1, _fun@1, _bool@1) ->
    sort_merge([lists:reverse(_l@1, []) | _acc@1], [],
               _fun@1, _bool@1);
reverse_sort_merge([], _acc@1, _fun@1, _bool@1) ->
    sort_merge(_acc@1, [], _fun@1, _bool@1).

scan(_enumerable@1, _fun@1) ->
    {_res@1, _} = reduce(_enumerable@1,
                         {[],
                          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                 123,
                                                                                 first)},
                         fun (__@1, {__@2, first}) ->
                                 {[__@1 | __@2],
                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                          124,
                                                                                          ok),
                                   __@1}};
                             (__@3, {__@4, {ok, __@5}}) ->
                                 __@6 = _fun@1(__@3, __@5),
                                 {[__@6 | __@4],
                                  {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                          125,
                                                                                          ok),
                                   __@6}}
                         end),
    lists:reverse(_res@1).

scan(_enumerable@1, _acc@1, _fun@1) ->
    {_res@1, _} = reduce(_enumerable@1, {[], _acc@1},
                         fun (__@1, {__@2, __@3}) ->
                                 __@4 = _fun@1(__@1, __@3),
                                 {[__@4 | __@2], __@4}
                         end),
    lists:reverse(_res@1).

shuffle(_enumerable@1) ->
    _randomized@1 = reduce(_enumerable@1, [],
                           fun (_x@1, _acc@1) ->
                                   [{rand:uniform(), _x@1} | _acc@1]
                           end),
    shuffle_unwrap(lists:keysort(1, _randomized@1), []).

shuffle_unwrap([{_, _h@1} | _enumerable@1], _t@1) ->
    shuffle_unwrap(_enumerable@1, [_h@1 | _t@1]);
shuffle_unwrap([], _t@1) -> _t@1.

slice(_enumerable@1,
      #{'__struct__' := 'Elixir.Range', first := _first@1,
        last := _last@1}) ->
    {_count@1, _fun@1} = slice_count_and_fun(_enumerable@1),
    _corr_first@1 = case
                      'Elixir.Darwin.Mutators.Default.OpGreaterThanOrEqualToMutator':do_mutate('Elixir.Enom',
                                                                                               126,
                                                                                               _first@1,
                                                                                               0)
                        of
                      false ->
                          'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                  127,
                                                                                  _first@1,
                                                                                  _count@1);
                      true -> _first@1
                    end,
    _corr_last@1 = case
                     'Elixir.Darwin.Mutators.Default.OpGreaterThanOrEqualToMutator':do_mutate('Elixir.Enom',
                                                                                              128,
                                                                                              _last@1,
                                                                                              0)
                       of
                     false ->
                         'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                 129,
                                                                                 _last@1,
                                                                                 _count@1);
                     true -> _last@1
                   end,
    _amount@1 =
        'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                131,
                                                                'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                                        130,
                                                                                                                        _corr_last@1,
                                                                                                                        _corr_first@1),
                                                                1),
    case case case
                'Elixir.Darwin.Mutators.Default.OpGreaterThanOrEqualToMutator':do_mutate('Elixir.Enom',
                                                                                         132,
                                                                                         _corr_first@1,
                                                                                         0)
                  of
                false ->
                    'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                           133,
                                                                           false);
                true ->
                    'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                 134,
                                                                                 _corr_first@1,
                                                                                 _count@1)
              end
             of
           false ->
               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                      135,
                                                                      false);
           true ->
               'Elixir.Darwin.Mutators.Default.OpGreaterThanMutator':do_mutate('Elixir.Enom',
                                                                               136,
                                                                               _amount@1,
                                                                               0)
         end
        of
      false -> [];
      true ->
          _fun@1(_corr_first@1,
                 erlang:min(_amount@1,
                            'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                    137,
                                                                                    _count@1,
                                                                                    _corr_first@1)))
    end.

slice(__enumerable@1, _start_index@1, 0)
    when erlang:is_integer(_start_index@1) ->
    [];
slice(_enumerable@1, _start_index@1, _amount@1)
    when (erlang:is_integer(_start_index@1) andalso
            erlang:is_integer(_amount@1))
           andalso _amount@1 >= 0 ->
    slice_any(_enumerable@1, _start_index@1, _amount@1).

slice_any(_enumerable@1, _start@1, _amount@1)
    when _start@1 < 0 ->
    {_count@1, _fun@1} = slice_count_and_fun(_enumerable@1),
    _start@2 =
        'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                138, _count@1,
                                                                _start@1),
    case
      'Elixir.Darwin.Mutators.Default.OpGreaterThanOrEqualToMutator':do_mutate('Elixir.Enom',
                                                                               139,
                                                                               _start@2,
                                                                               0)
        of
      false -> [];
      true ->
          _fun@1(_start@2,
                 erlang:min(_amount@1,
                            'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                    140,
                                                                                    _count@1,
                                                                                    _start@2)))
    end;
slice_any(_list@1, _start@1, _amount@1)
    when erlang:is_list(_list@1) ->
    take_list(drop_list(_list@1, _start@1), _amount@1);
slice_any(_enumerable@1, _start@1, _amount@1) ->
    case 'Elixir.Enomerable':slice(_enumerable@1) of
      {ok, _count@1, _} when _start@1 >= _count@1 -> [];
      {ok, _count@2, _fun@1}
          when erlang:is_function(_fun@1) ->
          _fun@1(_start@1,
                 erlang:min(_amount@1,
                            'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                    141,
                                                                                    _count@2,
                                                                                    _start@1)));
      {error, _module@1} ->
          slice_enum(_enumerable@1, _module@1, _start@1,
                     _amount@1)
    end.

slice_count_and_fun(_enumerable@1)
    when erlang:is_list(_enumerable@1) ->
    _length@1 = erlang:length(_enumerable@1),
    {_length@1,
     fun (__@1, __@2) ->
             'Elixir.Enomerable.List':slice(_enumerable@1, __@1,
                                            __@2, _length@1)
     end};
slice_count_and_fun(_enumerable@1) ->
    case 'Elixir.Enomerable':slice(_enumerable@1) of
      {ok, _count@1, _fun@1}
          when erlang:is_function(_fun@1) ->
          {_count@1, _fun@1};
      {error, _module@1} ->
          {_, {_list@1, _count@3}} =
              _module@1:reduce(_enumerable@1,
                               {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                       142,
                                                                                       cont),
                                {[], 0}},
                               fun (_elem@1, {_acc@1, _count@2}) ->
                                       {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                               143,
                                                                                               cont),
                                        {[_elem@1 | _acc@1],
                                         'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                 144,
                                                                                                 _count@2,
                                                                                                 1)}}
                               end),
          {_count@3,
           fun (__@1, __@2) ->
                   'Elixir.Enomerable.List':slice(lists:reverse(_list@1),
                                                  __@1, __@2, _count@3)
           end}
    end.

slice_enum(_enumerable@1, _module@1, _start@1,
           _amount@1) ->
    {_, {_, _, _slice@1}} = _module@1:reduce(_enumerable@1,
                                             {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                     145,
                                                                                                     cont),
                                              {_start@1, _amount@1, []}},
                                             fun (__entry@1,
                                                  {_start@2, _amount@2,
                                                   __list@1})
                                                     when _start@2 > 0 ->
                                                     {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                             146,
                                                                                                             cont),
                                                      {'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                               147,
                                                                                                               _start@2,
                                                                                                               1),
                                                       _amount@2, []}};
                                                 (_entry@1,
                                                  {_start@3, _amount@3,
                                                   _list@1})
                                                     when _amount@3 > 1 ->
                                                     {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                             148,
                                                                                                             cont),
                                                      {_start@3,
                                                       'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                               149,
                                                                                                               _amount@3,
                                                                                                               1),
                                                       [_entry@1 | _list@1]}};
                                                 (_entry@2,
                                                  {_start@4, _amount@4,
                                                   _list@2}) ->
                                                     {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                             150,
                                                                                                             halt),
                                                      {_start@4, _amount@4,
                                                       [_entry@2 | _list@2]}}
                                             end),
    lists:reverse(_slice@1).

sort(_enumerable@1)
    when erlang:is_list(_enumerable@1) ->
    lists:sort(_enumerable@1);
sort(_enumerable@1) ->
    sort(_enumerable@1, fun erlang:'=<'/2).

sort(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    lists:sort(_fun@1, _enumerable@1);
sort(_enumerable@1, _fun@1) ->
    sort_terminator(reduce(_enumerable@1, [],
                           fun (__@1, __@2) -> sort_reducer(__@1, __@2, _fun@1)
                           end),
                    _fun@1).

sort_by(__@1, __@2) ->
    sort_by(__@1, __@2, fun erlang:'=<'/2).

sort_by(_enumerable@1, _mapper@1, _sorter@1) ->
    map(sort(map(_enumerable@1,
                 fun (__@1) -> {__@1, _mapper@1(__@1)} end),
             fun (__@2, __@3) ->
                     _sorter@1(erlang:element(2, __@2),
                               erlang:element(2, __@3))
             end),
        fun (__@4) -> erlang:element(1, __@4) end).

sort_merge(_list@1, _fun@1, true) ->
    reverse_sort_merge(_list@1, [], _fun@1,
                       'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              151,
                                                                              true));
sort_merge(_list@1, _fun@1, false) ->
    sort_merge(_list@1, [], _fun@1,
               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                      152,
                                                                      false)).

sort_merge([_t1@1, [_h2@1 | _t2@1] | _l@1], _acc@1,
           _fun@1, true) ->
    sort_merge(_l@1,
               [sort_merge1(_t1@1, _h2@1, _t2@1, [], _fun@1,
                            'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                   153,
                                                                                   false))
                | _acc@1],
               _fun@1,
               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                      154,
                                                                      true));
sort_merge([[_h2@1 | _t2@1], _t1@1 | _l@1], _acc@1,
           _fun@1, false) ->
    sort_merge(_l@1,
               [sort_merge1(_t1@1, _h2@1, _t2@1, [], _fun@1,
                            'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                   155,
                                                                                   false))
                | _acc@1],
               _fun@1,
               'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                      156,
                                                                      false));
sort_merge([_l@1], [], __fun@1, __bool@1) -> _l@1;
sort_merge([_l@1], _acc@1, _fun@1, _bool@1) ->
    reverse_sort_merge([lists:reverse(_l@1, []) | _acc@1],
                       [], _fun@1, _bool@1);
sort_merge([], _acc@1, _fun@1, _bool@1) ->
    reverse_sort_merge(_acc@1, [], _fun@1, _bool@1).

sort_merge1([_h1@1 | _t1@1], _h2@1, _t2@1, _m@1, _fun@1,
            _bool@1) ->
    case
      'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                  157,
                                                                  _fun@1(_h1@1,
                                                                         _h2@1),
                                                                  _bool@1)
        of
      false ->
          sort_merge1(_t1@1, _h2@1, _t2@1, [_h1@1 | _m@1], _fun@1,
                      _bool@1);
      true ->
          sort_merge2(_h1@1, _t1@1, _t2@1, [_h2@1 | _m@1], _fun@1,
                      _bool@1)
    end;
sort_merge1([], _h2@1, _t2@1, _m@1, __fun@1,
            __bool@1) ->
    lists:reverse(_t2@1, [_h2@1 | _m@1]).

sort_merge2(_h1@1, _t1@1, [_h2@1 | _t2@1], _m@1, _fun@1,
            _bool@1) ->
    case
      'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                  158,
                                                                  _fun@1(_h1@1,
                                                                         _h2@1),
                                                                  _bool@1)
        of
      false ->
          sort_merge1(_t1@1, _h2@1, _t2@1, [_h1@1 | _m@1], _fun@1,
                      _bool@1);
      true ->
          sort_merge2(_h1@1, _t1@1, _t2@1, [_h2@1 | _m@1], _fun@1,
                      _bool@1)
    end;
sort_merge2(_h1@1, _t1@1, [], _m@1, __fun@1,
            __bool@1) ->
    lists:reverse(_t1@1, [_h1@1 | _m@1]).

sort_reducer(_entry@1,
             {split, _y@1, _x@1, _r@1, _rs@1, _bool@1}, _fun@1) ->
    case
      'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                  159,
                                                                  _fun@1(_y@1,
                                                                         _entry@1),
                                                                  _bool@1)
        of
      true ->
          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                  160, split),
           _entry@1, _y@1, [_x@1 | _r@1], _rs@1, _bool@1};
      false ->
          case
            'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                        161,
                                                                        _fun@1(_x@1,
                                                                               _entry@1),
                                                                        _bool@1)
              of
            true ->
                {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                        162,
                                                                        split),
                 _y@1, _entry@1, [_x@1 | _r@1], _rs@1, _bool@1};
            false ->
                case
                  'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                              163,
                                                                              _r@1,
                                                                              [])
                    of
                  true ->
                      {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              164,
                                                                              split),
                       _y@1, _x@1, [_entry@1], _rs@1, _bool@1};
                  false ->
                      {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              165,
                                                                              pivot),
                       _y@1, _x@1, _r@1, _rs@1, _entry@1, _bool@1}
                end
          end
    end;
sort_reducer(_entry@1,
             {pivot, _y@1, _x@1, _r@1, _rs@1, _s@1, _bool@1},
             _fun@1) ->
    case
      'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                  166,
                                                                  _fun@1(_y@1,
                                                                         _entry@1),
                                                                  _bool@1)
        of
      true ->
          {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                  167, pivot),
           _entry@1, _y@1, [_x@1 | _r@1], _rs@1, _s@1, _bool@1};
      false ->
          case
            'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                        168,
                                                                        _fun@1(_x@1,
                                                                               _entry@1),
                                                                        _bool@1)
              of
            true ->
                {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                        169,
                                                                        pivot),
                 _y@1, _entry@1, [_x@1 | _r@1], _rs@1, _s@1, _bool@1};
            false ->
                case
                  'Elixir.Darwin.Mutators.Default.OpEqualToMutator':do_mutate('Elixir.Enom',
                                                                              170,
                                                                              _fun@1(_s@1,
                                                                                     _entry@1),
                                                                              _bool@1)
                    of
                  true ->
                      {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              171,
                                                                              split),
                       _entry@1, _s@1, [], [[_y@1, _x@1 | _r@1] | _rs@1],
                       _bool@1};
                  false ->
                      {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                              172,
                                                                              split),
                       _s@1, _entry@1, [], [[_y@1, _x@1 | _r@1] | _rs@1],
                       _bool@1}
                end
          end
    end;
sort_reducer(_entry@1, [_x@1], _fun@1) ->
    {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                            173, split),
     _entry@1, _x@1, [], [], _fun@1(_x@1, _entry@1)};
sort_reducer(_entry@1, _acc@1, __fun@1) ->
    [_entry@1 | _acc@1].

sort_terminator({split, _y@1, _x@1, _r@1, _rs@1,
                 _bool@1},
                _fun@1) ->
    sort_merge([[_y@1, _x@1 | _r@1] | _rs@1], _fun@1,
               _bool@1);
sort_terminator({pivot, _y@1, _x@1, _r@1, _rs@1, _s@1,
                 _bool@1},
                _fun@1) ->
    sort_merge([[_s@1], [_y@1, _x@1 | _r@1] | _rs@1],
               _fun@1, _bool@1);
sort_terminator(_acc@1, __fun@1) -> _acc@1.

split(_enumerable@1, _count@1)
    when erlang:is_list(_enumerable@1) andalso
           _count@1 >= 0 ->
    split_list(_enumerable@1, _count@1, []);
split(_enumerable@1, _count@1) when _count@1 >= 0 ->
    {_, _list1@1, _list2@1} = reduce(_enumerable@1,
                                     {_count@1, [], []},
                                     fun (_entry@1,
                                          {_counter@1, _acc1@1, _acc2@1}) ->
                                             case
                                               'Elixir.Darwin.Mutators.Default.OpGreaterThanMutator':do_mutate('Elixir.Enom',
                                                                                                               174,
                                                                                                               _counter@1,
                                                                                                               0)
                                                 of
                                               false ->
                                                   {_counter@1, _acc1@1,
                                                    [_entry@1 | _acc2@1]};
                                               true ->
                                                   {'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                            175,
                                                                                                            _counter@1,
                                                                                                            1),
                                                    [_entry@1 | _acc1@1],
                                                    _acc2@1}
                                             end
                                     end),
    {lists:reverse(_list1@1), lists:reverse(_list2@1)};
split(_enumerable@1, _count@1) when _count@1 < 0 ->
    split_reverse_list(reverse(_enumerable@1), -_count@1,
                       []).

split_list([_head@1 | _tail@1], _counter@1, _acc@1)
    when _counter@1 > 0 ->
    split_list(_tail@1,
               'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                       176,
                                                                       _counter@1,
                                                                       1),
               [_head@1 | _acc@1]);
split_list(_list@1, 0, _acc@1) ->
    {lists:reverse(_acc@1), _list@1};
split_list([], _, _acc@1) ->
    {lists:reverse(_acc@1), []}.

split_reverse_list([_head@1 | _tail@1], _counter@1,
                   _acc@1)
    when _counter@1 > 0 ->
    split_reverse_list(_tail@1,
                       'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                               177,
                                                                               _counter@1,
                                                                               1),
                       [_head@1 | _acc@1]);
split_reverse_list(_list@1, 0, _acc@1) ->
    {lists:reverse(_list@1), _acc@1};
split_reverse_list([], _, _acc@1) -> {[], _acc@1}.

split_while(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    split_while_list(_enumerable@1, _fun@1, []);
split_while(_enumerable@1, _fun@1) ->
    {_list1@1, _list2@1} = reduce(_enumerable@1, {[], []},
                                  fun (_entry@1, {_acc1@1, []}) ->
                                          case _fun@1(_entry@1) of
                                            __@1
                                                when __@1 =:= nil orelse
                                                       __@1 =:= false ->
                                                {_acc1@1, [_entry@1]};
                                            _ -> {[_entry@1 | _acc1@1], []}
                                          end;
                                      (_entry@2, {_acc1@2, _acc2@1}) ->
                                          {_acc1@2, [_entry@2 | _acc2@1]}
                                  end),
    {lists:reverse(_list1@1), lists:reverse(_list2@1)}.

split_while_list([_head@1 | _tail@1], _fun@1, _acc@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false ->
          {lists:reverse(_acc@1), [_head@1 | _tail@1]};
      _ ->
          split_while_list(_tail@1, _fun@1, [_head@1 | _acc@1])
    end;
split_while_list([], _, _acc@1) ->
    {lists:reverse(_acc@1), []}.

split_with(_enumerable@1, _fun@1) ->
    {_acc1@2, _acc2@2} = reduce(_enumerable@1, {[], []},
                                fun (_entry@1, {_acc1@1, _acc2@1}) ->
                                        case _fun@1(_entry@1) of
                                          __@1
                                              when __@1 =:= nil orelse
                                                     __@1 =:= false ->
                                              {_acc1@1, [_entry@1 | _acc2@1]};
                                          _ -> {[_entry@1 | _acc1@1], _acc2@1}
                                        end
                                end),
    {lists:reverse(_acc1@2), lists:reverse(_acc2@2)}.

sum(#{'__struct__' := 'Elixir.Range', first := _first@1,
      last := _last@1}) ->
    'Elixir.Darwin.Mutators.Default.OpMulMutator':do_mutate('Elixir.Enom',
                                                            181,
                                                            'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                    178,
                                                                                                                    _last@1,
                                                                                                                    _first@1),
                                                            'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                    180,
                                                                                                                    erlang:abs('Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                                                                                                       179,
                                                                                                                                                                                       _last@1,
                                                                                                                                                                                       _first@1)),
                                                                                                                    1))
      div 2;
sum(_enumerable@1) ->
    reduce(_enumerable@1, 0, fun erlang:'+'/2).

take(__enumerable@1, 0) -> [];
take(_enumerable@1, _amount@1)
    when (erlang:is_list(_enumerable@1) andalso
            erlang:is_integer(_amount@1))
           andalso _amount@1 > 0 ->
    take_list(_enumerable@1, _amount@1);
take(_enumerable@1, _amount@1)
    when erlang:is_integer(_amount@1) andalso
           _amount@1 > 0 ->
    {_, {_res@1, _}} =
        'Elixir.Enomerable':reduce(_enumerable@1,
                                   {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                           182,
                                                                                           cont),
                                    {[], _amount@1}},
                                   fun (_entry@1, {_list@1, _n@1}) ->
                                           case _n@1 of
                                             1 ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         183,
                                                                                                         halt),
                                                  {[_entry@1 | _list@1],
                                                   'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                           184,
                                                                                                           _n@1,
                                                                                                           1)}};
                                             _ ->
                                                 {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         185,
                                                                                                         cont),
                                                  {[_entry@1 | _list@1],
                                                   'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                                           186,
                                                                                                           _n@1,
                                                                                                           1)}}
                                           end
                                   end),
    lists:reverse(_res@1);
take(_enumerable@1, _amount@1)
    when erlang:is_integer(_amount@1) andalso
           _amount@1 < 0 ->
    {_count@1, _fun@1} = slice_count_and_fun(_enumerable@1),
    _first@1 =
        erlang:max('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                           187,
                                                                           _amount@1,
                                                                           _count@1),
                   0),
    _fun@1(_first@1,
           'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                   188,
                                                                   _count@1,
                                                                   _first@1)).

take_every(_enumerable@1, 1) -> to_list(_enumerable@1);
take_every(__enumerable@1, 0) -> [];
take_every([], _nth@1)
    when erlang:is_integer(_nth@1) andalso _nth@1 > 1 ->
    [];
take_every(_enumerable@1, _nth@1)
    when erlang:is_integer(_nth@1) andalso _nth@1 > 1 ->
    {_res@1, _} = reduce(_enumerable@1,
                         {[],
                          'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                 189,
                                                                                 first)},
                         fun (__@1, {__@2, __@3})
                                 when __@3 =:= first orelse __@3 =:= _nth@1 ->
                                 {[__@1 | __@2], 1};
                             (__@4, {__@5, __@6}) ->
                                 {__@5,
                                  'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                          190,
                                                                                          __@6,
                                                                                          1)}
                         end),
    lists:reverse(_res@1).

take_list([_head@1 | _], 1) -> [_head@1];
take_list([_head@1 | _tail@1], _counter@1) ->
    [_head@1 | take_list(_tail@1,
                         'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                                 191,
                                                                                 _counter@1,
                                                                                 1))];
take_list([], __counter@1) -> [].

take_random(__enumerable@1, 0) -> [];
take_random(_enumerable@1, _count@1)
    when erlang:is_integer(_count@1) andalso
           _count@1 > 128 ->
    _reducer@1 = fun (_elem@1, {_idx@1, _sample@1}) ->
                         _jdx@1 = random_integer(0, _idx@1),
                         case
                           'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                        192,
                                                                                        _idx@1,
                                                                                        _count@1)
                             of
                           true ->
                               _value@1 = 'Elixir.Map':get(_sample@1, _jdx@1),
                               {'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                        193,
                                                                                        _idx@1,
                                                                                        1),
                                maps:put(_jdx@1, _elem@1,
                                         maps:put(_idx@1, _value@1,
                                                  _sample@1))};
                           false ->
                               case
                                 'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                              194,
                                                                                              _jdx@1,
                                                                                              _count@1)
                                   of
                                 true ->
                                     {'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                              195,
                                                                                              _idx@1,
                                                                                              1),
                                      maps:put(_jdx@1, _elem@1, _sample@1)};
                                 false ->
                                     {'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                              196,
                                                                                              _idx@1,
                                                                                              1),
                                      _sample@1}
                               end
                         end
                 end,
    {_size@1, _sample@2} = reduce(_enumerable@1, {0, #{}},
                                  _reducer@1),
    take_random(_sample@2, erlang:min(_count@1, _size@1),
                []);
take_random(_enumerable@1, _count@1)
    when erlang:is_integer(_count@1) andalso _count@1 > 0 ->
    _sample@1 = erlang:make_tuple(_count@1,
                                  'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                         197,
                                                                                         nil)),
    _reducer@1 = fun (_elem@1, {_idx@1, _sample@2}) ->
                         _jdx@1 = random_integer(0, _idx@1),
                         case
                           'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                        198,
                                                                                        _idx@1,
                                                                                        _count@1)
                             of
                           true ->
                               _value@1 =
                                   erlang:element('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                          199,
                                                                                                          _jdx@1,
                                                                                                          1),
                                                  _sample@2),
                               {'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                        200,
                                                                                        _idx@1,
                                                                                        1),
                                erlang:setelement('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                          201,
                                                                                                          _jdx@1,
                                                                                                          1),
                                                  erlang:setelement('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                            202,
                                                                                                                            _idx@1,
                                                                                                                            1),
                                                                    _sample@2,
                                                                    _value@1),
                                                  _elem@1)};
                           false ->
                               case
                                 'Elixir.Darwin.Mutators.Default.OpLessThanMutator':do_mutate('Elixir.Enom',
                                                                                              203,
                                                                                              _jdx@1,
                                                                                              _count@1)
                                   of
                                 true ->
                                     {'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                              204,
                                                                                              _idx@1,
                                                                                              1),
                                      erlang:setelement('Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                                                205,
                                                                                                                _jdx@1,
                                                                                                                1),
                                                        _sample@2, _elem@1)};
                                 false ->
                                     {'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                              206,
                                                                                              _idx@1,
                                                                                              1),
                                      _sample@2}
                               end
                         end
                 end,
    {_size@1, _sample@3} = reduce(_enumerable@1,
                                  {0, _sample@1}, _reducer@1),
    take(erlang:tuple_to_list(_sample@3),
         erlang:min(_count@1, _size@1)).

take_random(__sample@1, 0, _acc@1) -> _acc@1;
take_random(_sample@1, _position@1, _acc@1) ->
    _position@2 =
        'Elixir.Darwin.Mutators.Default.OpSubMutator':do_mutate('Elixir.Enom',
                                                                207,
                                                                _position@1, 1),
    take_random(_sample@1, _position@2,
                ['Elixir.Map':get(_sample@1, _position@2) | _acc@1]).

take_while(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    take_while_list(_enumerable@1, _fun@1);
take_while(_enumerable@1, _fun@1) ->
    {_, _res@1} = 'Elixir.Enomerable':reduce(_enumerable@1,
                                             {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                     208,
                                                                                                     cont),
                                              []},
                                             fun (_entry@1, _acc@1) ->
                                                     case _fun@1(_entry@1) of
                                                       __@1
                                                           when __@1 =:= nil
                                                                  orelse
                                                                  __@1 =:=
                                                                    false ->
                                                           {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                   209,
                                                                                                                   halt),
                                                            _acc@1};
                                                       _ ->
                                                           {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                   210,
                                                                                                                   cont),
                                                            [_entry@1 | _acc@1]}
                                                     end
                                             end),
    lists:reverse(_res@1).

take_while_list([_head@1 | _tail@1], _fun@1) ->
    case _fun@1(_head@1) of
      __@1 when __@1 =:= nil orelse __@1 =:= false -> [];
      _ -> [_head@1 | take_while_list(_tail@1, _fun@1)]
    end;
take_while_list([], _) -> [].

to_list(_enumerable@1)
    when erlang:is_list(_enumerable@1) ->
    _enumerable@1;
to_list(#{'__struct__' := __@1 = _} = _enumerable@1)
    when erlang:is_atom(__@1) ->
    lists:reverse(reverse(_enumerable@1));
to_list(#{} = _enumerable@1) ->
    maps:to_list(_enumerable@1);
to_list(_enumerable@1) ->
    lists:reverse(reverse(_enumerable@1)).

uniq(_enumerable@1) ->
    uniq_by(_enumerable@1, fun (_x@1) -> _x@1 end).

uniq(_enumerable@1, _fun@1) ->
    uniq_by(_enumerable@1, _fun@1).

uniq_by(_enumerable@1, _fun@1)
    when erlang:is_list(_enumerable@1) ->
    uniq_list(_enumerable@1, #{}, _fun@1);
uniq_by(_enumerable@1, _fun@1) ->
    {_list@1, _} = reduce(_enumerable@1, {[], #{}},
                          fun (__@1, {__@3, __@4} = __@2) ->
                                  __@5 = _fun@1(__@1),
                                  case maps:is_key(__@5, __@4) of
                                    __@6
                                        when __@6 =:= nil orelse
                                               __@6 =:= false ->
                                        {[__@1 | __@3],
                                         maps:put(__@5,
                                                  'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                         211,
                                                                                                         true),
                                                  __@4)};
                                    _ -> __@2
                                  end
                          end),
    lists:reverse(_list@1).

uniq_list([_head@1 | _tail@1], _set@1, _fun@1) ->
    _value@1 = _fun@1(_head@1),
    case _set@1 of
      #{_value@1 := true} ->
          uniq_list(_tail@1, _set@1, _fun@1);
      #{} ->
          [_head@1 | uniq_list(_tail@1,
                               maps:put(_value@1,
                                        'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                               212,
                                                                                               true),
                                        _set@1),
                               _fun@1)]
    end;
uniq_list([], __set@1, __fun@1) -> [].

unzip(_enumerable@1) ->
    {_list1@2, _list2@2} = reduce(_enumerable@1, {[], []},
                                  fun ({_el1@1, _el2@1},
                                       {_list1@1, _list2@1}) ->
                                          {[_el1@1 | _list1@1],
                                           [_el2@1 | _list2@1]}
                                  end),
    {lists:reverse(_list1@2), lists:reverse(_list2@2)}.

with_index(__@1) -> with_index(__@1, 0).

with_index(_enumerable@1, _offset@1) ->
    erlang:element(1,
                   map_reduce(_enumerable@1, _offset@1,
                              fun (_x@1, _acc@1) ->
                                      {{_x@1, _acc@1},
                                       'Elixir.Darwin.Mutators.Default.OpAddMutator':do_mutate('Elixir.Enom',
                                                                                               213,
                                                                                               _acc@1,
                                                                                               1)}
                              end)).

zip([]) -> [];
zip(_enumerables@1) ->
    lists:reverse(erlang:element(2,
                                 ('Elixir.Stream':zip(_enumerables@1))({'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                               214,
                                                                                                                               cont),
                                                                        []},
                                                                       fun
                                                                         (__@1,
                                                                          __@2) ->
                                                                             {'Elixir.Darwin.Mutators.Default.AtomMutator':do_mutate('Elixir.Enom',
                                                                                                                                     215,
                                                                                                                                     cont),
                                                                              [__@1
                                                                               | __@2]}
                                                                       end))).

zip(_enumerable1@1, _enumerable2@1)
    when erlang:is_list(_enumerable1@1) andalso
           erlang:is_list(_enumerable2@1) ->
    zip_list(_enumerable1@1, _enumerable2@1);
zip(_enumerable1@1, _enumerable2@1) ->
    zip([_enumerable1@1, _enumerable2@1]).

zip_list([_h1@1 | _next1@1], [_h2@1 | _next2@1]) ->
    [{_h1@1, _h2@1} | zip_list(_next1@1, _next2@1)];
zip_list(_, []) -> [];
zip_list([], _) -> [].
