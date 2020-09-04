desc 'Choose OPERATION_SYSTEM(android or ios), RUNNER(local or ci), PROFILE(Verify cucumber.yml) '
task :start, [:OPERATION_SYSTEM, :RUNNER, :PROFILE] do |_t, args|
  init = 'cucumber' +
        ' OPERATION_SYSTEM=' + args[:OPERATION_SYSTEM] +
        ' RUNNER=' + args[:RUNNER] +
        ' -p ' + args[:PROFILE]
  
        system(init)

end
