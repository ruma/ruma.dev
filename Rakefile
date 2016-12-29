# frozen_string_literal: true

require 'json'
require 'set'

require 'octokit'

CONTRIBUTORS_DATA = "data/contributors.json"

namespace :contributors do
  desc "Update the list of Ruma contributors and print the GitHub usernames of new contributors"
  task :update do
    known_contributors = JSON.parse(File.read(CONTRIBUTORS_DATA))
    all_contributors = Set.new

    client = Octokit::Client.new
    client.auto_paginate = true

    %w(
      ruma
      ruma-api
      ruma-client
      ruma-client-api
      ruma-events
      ruma-federation
      ruma-identifiers
      ruma-signatures
    ).each do |repo|
      stats = nil

      loop do
        stats = client.contributors_stats("ruma/#{repo}")

        if !stats.nil?
          break
        else
          sleep 3
        end
      end

      stats.each do |contributor_stats|
        all_contributors.add(contributor_stats["author"]["login"])
      end
    end

    new_contributors = all_contributors - known_contributors

    puts "New contributors:"
    puts
    new_contributors.sort.each { |contributor| puts "- #{contributor}" }
    puts

    File.open(CONTRIBUTORS_DATA, "w") do |file|
      file.write(JSON.pretty_generate(all_contributors.to_a.sort))
    end

    puts "Contributors list updated."
  end
end
