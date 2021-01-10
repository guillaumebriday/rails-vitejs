module ApplicationHelper
  def javascript_vite_tag
    if Rails.env.development?
      sources = %w[
        http://localhost:3001/@vite/client
        http://localhost:3001/application.js
      ]

      sources.map do |src|
        tag.script src: src, type: 'module'
      end.join.html_safe
    else
      tag.script(src: "dist/#{manifest.dig('application.js', 'file')}", type: 'module')
    end
  end

  def stylesheet_vite_tag
    return if Rails.env.development?

    tag.link(href: "dist/#{manifest.dig('application.css', 'file')}", rel: 'stylesheet')
  end

  private

  def manifest
    manifest_path = Rails.root.join('public/dist/manifest.json')
    @manifest_hash ||= JSON.parse(File.read(manifest_path))
  end
end
