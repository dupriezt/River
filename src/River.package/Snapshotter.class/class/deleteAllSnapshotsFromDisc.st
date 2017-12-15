as yet unclassified
deleteAllSnapshotsFromDisc
	<script>
	snapshots ifNotNil: [ :snaps| snaps do: [ :snap | snap deleteFromDisc ] ].