include apt

package { vim: }
package { inotify-tools: }
package { ffmpeg: }
package { curl: }
package { "clang++-6.0": }
package { "g++-8": }
package { git: }
package { make: }
package { clang-format: }
package { pandoc: }
package { libreoffice: }
package { graphviz: }
package { fonts-indic: }
package { sloccount: }
package { iputils-tracepath: }
package { ipcalc: }

exec { update:
	command => "/usr/bin/apt full-upgrade || true"
}
