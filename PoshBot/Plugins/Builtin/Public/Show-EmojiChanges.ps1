
function Show-EmojiChanges {
    <#
    .SYNOPSIS
    Announces to channel emoji events by using the emoji changed
    #>
    [PoshBot.BotCommand(
        Command = $false,
        TriggerType = 'event',
        MessageType = 'EmojiChanged',
        MessageSubType = 'Added'
    )]
    [cmdletbinding()]
    param(
        [parameter(ValueFromRemainingArguments)]
        $Dummy
    )
    $emojiName = $global:PoshBotContext.RawMessage.name
    Write-Output "Emoji Added! $emojiName"
}
