# Finds the security code of the longest successful Mars mission.
# Type to terminal: awk -f my_parser.awk space_missions.log 

BEGIN {
    FS = "|"
    max_duration = 0
    security_code = ""
}

# Skip comment lines and empty lines
/^#/ { next }
/^$/ { next }

{
    # Strip leading/trailing spaces from key fields
    gsub(/^[ \t]+|[ \t]+$/, "", $3)   # Destination
    gsub(/^[ \t]+|[ \t]+$/, "", $4)   # Status
    gsub(/^[ \t]+|[ \t]+$/, "", $6)   # Duration
    gsub(/^[ \t]+|[ \t]+$/, "", $8)   # Security Code

    # Only process completed Mars missions
    if ($3 == "Mars" && $4 == "Completed") {
        duration = $6 + 0
        if (duration > max_duration) {
            max_duration  = duration
            security_code = $8
        }
    }
}

END {
    print "Longest Completed Mars Mission"
    print "Security Code: " security_code
}