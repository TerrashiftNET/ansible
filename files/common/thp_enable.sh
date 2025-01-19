#!/usr/bin/env bash
#
#
echo madvise > /sys/kernel/mm/transparent_hugepage/enabled
echo advise > /sys/kernel/mm/transparent_hugepage/shmem_enabled
echo > /sys/kernel/mm/transparent_hugepage/khugepaged/defrag
echo defer > /sys/kernel/mm/transparent_hugepage/defrag
