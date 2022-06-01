You have four hard drives in a RAID 5 configuration. This means that at least any one drive can partially or totally fail, yet the remaining 3 drives can be used to rebuild and preserve the integrity of the data.

You've had an inexplicable corruption issue where certain parts of the binary data (bits) on some volumes was lost. Known lost data is denoted by asterisks.

To make matters even worse, the RAID attempted to repair itself but did so unreliably, resulting in some incongruities in the integrity of the RAID.

Return an attempt to rebuild the RAID, replacing asterisks with bits where possible. Additionally, where incongruities can be identified, replace this corrupted data with asterisks.

Note: I believe this challenge will be much, much more fun and rewarding if you try to figure out the methodology of RAID 5 for yourself, almost like a reverse challenge.... that said, if you are really struggling, this link should help.

Example

    For drives = ["0101", "0001", "1011", "****"], the output should be
    raidRebuild(drives) = ["0101", "0001", "1011", "1111"].
    This data can be fully repaired.

    For drives = ["0101", "0001", "1011", "1110"], the output should be
    raidRebuild(drives) = ["010*", "000*", "101*", "111*"].
    The last binary character on each drive must be corrupted.

    For drives = ["0001", "0101", "1001", "1101"], the output should be
    raidRebuild(drives) = ["0001", "0101", "1001", "1101"].
    Exactly the same, as there is no reason to believe this data has been corrupted.

    [time limit] 4000ms (rb)

    [input] array.string drives

    Data from 4 drives with corruption.

    Guaranteed constraints:
    drives.length = 4,
    1 ≤ drives[0].length ≤ 104,
    drives[i].length = drives[0].length.

    [output] array.string

    Data from 4 drives repaired if possible.
