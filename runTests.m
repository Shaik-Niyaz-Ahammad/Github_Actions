% runTests.m
addpath('src'); % ensure src on path
import matlab.unittest.TestRunner
import matlab.unittest.plugins.XMLPlugin

% create output folder
if ~exist('testResults','dir')
    mkdir('testResults');
end

suite = testsuite('tests');
runner = TestRunner.withNoPlugins;

% produce JUnit XML for CI reporting
plugin = XMLPlugin.producingJUnitFormat('testResults/junit.xml');
runner.addPlugin(plugin);

results = runner.run(suite);
numFailed = sum([results.Failed]);

if numFailed > 0
    exit(1)
else
    exit(0)
end