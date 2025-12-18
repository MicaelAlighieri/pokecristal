TownMap_ConvertLineBreakCharacters:
	ld hl, wStringBuffer1
.loop
	ld a, [hl]
	cp '@'
	jr z, .end
	cp '<WBR>'
	jr z, .line_feed
	cp '<BSP>'
	jr z, .line_feed
	cp "<¯>"
	jr z, .hyphen_split
	inc hl
	jr .loop

.hyphen_split
	ld [hl], "<->"
	jr .end

.line_feed
	ld [hl], '<LF>'

.end
	ld de, wStringBuffer1
	hlcoord 9, 0
	call PlaceString
	ret
