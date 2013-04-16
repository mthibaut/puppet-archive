#!/usr/bin/env rspec

require 'spec_helper'

describe 'archive', :type => :define do

  # Use the README example for testing
  describe "Working example one from README" do
    let :title do
      '/var/tmp/mod.tgz'
    end
  
    let :params do
      { 'ensure' => 'unpacked',
        'source' => [ 'foo', 'bar/baz' ],
        'cwd'    => '/var/tmp/unpack'
      }
    end
  
    it do
      should contain_archive('/var/tmp/mod.tgz').with({
                   'ensure' => 'unpacked',
                   'source' => [ 'foo', 'bar/baz' ],
                   'cwd'    => '/var/tmp/unpack'
      })
    end
  end
end
