--BQCxomvNshCbijCGDYSYG5HqFMp9453aPdTQTgpCYxjnL-irEB2UfnzkKMH6GxW_0lu4pt77A6-6sCQGKiAqOxRMbKzL3jVyFGePKSvkCZsICGRdgnA7cUWIRMDoCgbFdlW_UH-E02NFJH1H3j1xuRmt3q8HsHbhSbxXXXEUb5oUuO94WQK9zc2qZ9dkkPEGeCCYQH_hKJRSJMA-qv7d

local API_SETTINGS = {
    RefreshRate = 0; --lower=faster|higher=slower
    API_TOKEN = "";
    -- ^^^ tokens can be obtained here: https://developer.spotify.com/console/get-several-tracks/
    --make scure the following scopes are enabled:
    --user-read-recently-played
    --user-read-playback-position
    --user-read-playback-state
    --user-read-currently-playing
    --user-follow-modify
    --user-modify-playback-state
    
    --Settings // These can be changed through the settings panel within the script. access this by pressing on the gear icon
    SongChangeNotification = true;
    DraggableMiniplayer = false;
    
    ver = "ver_2"
}



























































if game.CoreGui:FindFirstChild("SpotifyMiniplayer") then
    local var = game.CoreGui:FindFirstChild("SpotifyMiniplayer")
    var:Destroy()
end

API_SETTINGS.Init = function()
    
local SpotifyMiniplayer = Instance.new("ScreenGui")
local SongFrame = Instance.new("Frame")
local CoverArt = Instance.new("ImageButton")
local SongName = Instance.new("TextLabel")
local SongArtist = Instance.new("TextLabel")
local Playback = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ProgressBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Buttons = Instance.new("Frame")
local PreviousSong = Instance.new("ImageButton")
local PlaySong = Instance.new("ImageButton")
local SkipSong = Instance.new("ImageButton")
local PauseSong = Instance.new("ImageButton")
local GR_settings = Instance.new("ImageButton")

--Properties:

SpotifyMiniplayer.Name = "SpotifyMiniplayer"
SpotifyMiniplayer.Parent = game.CoreGui
SpotifyMiniplayer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SpotifyMiniplayer.DisplayOrder = 999999999
SpotifyMiniplayer.ResetOnSpawn = false

SongFrame.Name = "SongFrame"
SongFrame.Parent = SpotifyMiniplayer
SongFrame.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
SongFrame.BorderSizePixel = 0
SongFrame.Position = UDim2.new(0.00353542296, 0, 0.170209557, 0)
SongFrame.Size = UDim2.new(0, 300, 0, 100)

CoverArt.Name = "CoverArt"
CoverArt.Parent = SongFrame
CoverArt.Active = false
CoverArt.AnchorPoint = Vector2.new(0.5, 0.5)
CoverArt.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
CoverArt.BorderSizePixel = 0
CoverArt.Position = UDim2.new(0.170000002, 0, 0.5, 0)
CoverArt.Selectable = false
CoverArt.Size = UDim2.new(0, 90, 0, 90)
CoverArt.ZIndex = 5
CoverArt.AutoButtonColor = false

SongName.Name = "SongName"
SongName.Parent = SongFrame
SongName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SongName.BackgroundTransparency = 1.000
SongName.Position = UDim2.new(0.342883497, 0, 0.0500000007, 0)
SongName.Size = UDim2.new(0, 170, 0, 23)
SongName.ZIndex = 5
SongName.Font = Enum.Font.Arial
SongName.Text = "Song Name"
SongName.TextColor3 = Color3.fromRGB(255, 255, 255)
SongName.TextScaled = true
SongName.TextSize = 23.000
SongName.TextStrokeTransparency = 0.000
SongName.TextWrapped = true
SongName.TextXAlignment = Enum.TextXAlignment.Left
SongName.TextYAlignment = Enum.TextYAlignment.Top

SongArtist.Name = "SongArtist"
SongArtist.Parent = SongFrame
SongArtist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SongArtist.BackgroundTransparency = 1.000
SongArtist.Position = UDim2.new(0.349719644, 0, 0.279385686, 0)
SongArtist.Size = UDim2.new(0, 186, 0, 17)
SongArtist.ZIndex = 5
SongArtist.Font = Enum.Font.Arial
SongArtist.Text = "Artists on Song"
SongArtist.TextColor3 = Color3.fromRGB(255, 255, 255)
SongArtist.TextScaled = true
SongArtist.TextSize = 16.000
SongArtist.TextStrokeTransparency = 0.000
SongArtist.TextTransparency = 0.300
SongArtist.TextWrapped = true
SongArtist.TextXAlignment = Enum.TextXAlignment.Left
SongArtist.TextYAlignment = Enum.TextYAlignment.Top

Playback.Name = "Playback"
Playback.Parent = SongFrame
Playback.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Playback.BackgroundTransparency = 0.450
Playback.Position = UDim2.new(0.333333343, 0, 0.670000136, 0)
Playback.Size = UDim2.new(0, 193, 0, 3)
Playback.ZIndex = 5

UICorner.Parent = Playback

ProgressBar.Name = "Bar"
ProgressBar.Parent = Playback
ProgressBar.BackgroundColor3 = Color3.fromRGB(92, 255, 92)
ProgressBar.Size = UDim2.new(0.300000012, 0, 1, 0)

UICorner_2.Parent = ProgressBar

Buttons.Name = "Buttons"
Buttons.Parent = SongFrame
Buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Buttons.BackgroundTransparency = 1.000
Buttons.Position = UDim2.new(0.319999993, 0, 0.700000167, 0)
Buttons.Size = UDim2.new(0, 197, 0, 30)
Buttons.ZIndex = 5

PreviousSong.Name = "PreviousSong"
PreviousSong.Parent = Buttons
PreviousSong.BackgroundTransparency = 1.000
PreviousSong.LayoutOrder = 5
PreviousSong.Size = UDim2.new(0, 25, 0, 25)
PreviousSong.ZIndex = 2
PreviousSong.Image = "rbxassetid://3926307971"
PreviousSong.ImageRectOffset = Vector2.new(364, 364)
PreviousSong.ImageRectSize = Vector2.new(36, 36)

PlaySong.Name = "PlaySong"
PlaySong.Parent = Buttons
PlaySong.BackgroundTransparency = 1.000
PlaySong.LayoutOrder = 6
PlaySong.Position = UDim2.new(0.130890042, 0, 0, 0)
PlaySong.Size = UDim2.new(0, 25, 0, 25)
PlaySong.ZIndex = 2
PlaySong.Visible = false
PlaySong.Image = "rbxassetid://3926307971"
PlaySong.ImageRectOffset = Vector2.new(764, 244)
PlaySong.ImageRectSize = Vector2.new(36, 36)

SkipSong.Name = "SkipSong"
SkipSong.Parent = Buttons
SkipSong.BackgroundTransparency = 1.000
SkipSong.LayoutOrder = 5
SkipSong.Position = UDim2.new(0.256703943, 0, 0, 0)
SkipSong.Size = UDim2.new(0, 25, 0, 25)
SkipSong.ZIndex = 2
SkipSong.Image = "rbxassetid://3926307971"
SkipSong.ImageRectOffset = Vector2.new(724, 324)
SkipSong.ImageRectSize = Vector2.new(36, 36)

PauseSong.Name = "PauseSong"
PauseSong.Parent = Buttons
PauseSong.BackgroundTransparency = 1.000
PauseSong.LayoutOrder = 6
PauseSong.Position = UDim2.new(0.130999997, 0, 0, 0)
PauseSong.Size = UDim2.new(0, 25, 0, 25)
PauseSong.Visible = true
PauseSong.ZIndex = 2
PauseSong.Image = "rbxassetid://3926307971"
PauseSong.ImageRectOffset = Vector2.new(804, 124)
PauseSong.ImageRectSize = Vector2.new(36, 36)

GR_settings.Name = "settings"
GR_settings.Parent = SongFrame
GR_settings.BackgroundTransparency = 1.000
GR_settings.Position = UDim2.new(0.926666617, 0, 0.0499999523, 0)
GR_settings.Size = UDim2.new(0, 15, 0, 15)
GR_settings.ZIndex = 2
GR_settings.Image = "rbxassetid://3926307971"
GR_settings.ImageColor3 = Color3.fromRGB(70, 70, 70)
GR_settings.ImageRectOffset = Vector2.new(324, 124)
GR_settings.ImageRectSize = Vector2.new(36, 36)

--// services
local gui_service = game:GetService("GuiService")
local run_service = game:GetService("RunService")
local http_service = game:GetService("HttpService")
local user_input_service = game:GetService("UserInputService")

--// variables
local _token = API_SETTINGS.API_TOKEN

--// miniplayer

local function spotify_POST(url)
            syn.request({
            Url = url,
            Method = "POST",
            Headers = {
                ["Authorization"] = "Bearer " .. API_SETTINGS.API_TOKEN,
                ["Accept"] = "application/json",
                ["Content-Type"] = "application/json"
            }
        })
end
local function spotify_PUT(url)
            syn.request({
            Url = url,
            Method = "PUT",
            Headers = {
                ["Authorization"] = "Bearer " .. API_SETTINGS.API_TOKEN,
                ["Accept"] = "application/json",
                ["Content-Type"] = "application/json"
            }
        })
end
local function spotify_GET(url)
        local data = syn.request({
            Url = url,
            Method = "GET",
            Headers = {
                ["Authorization"] = "Bearer " .. API_SETTINGS.API_TOKEN,
                ["Accept"] = "application/json",
                ["Content-Type"] = "application/json"
            }
        })
    --[[
        if not data.Success then
            assert(false, "invalid token or invalid permissions, try requesting a new one.")
        end
        ]]
        return http_service:JSONDecode(data.Body)
end


local DrawCover = Drawing.new("Image")
local function Update_Current()
    task.spawn(function()
        DrawCover.Size = Vector2.new(90,90)
        DrawCover.Visible = true
        --// basic setup
        while task.wait(API_SETTINGS.RefreshRate) do -- change wait time if api token expires too fast!!!
            local current_song = spotify_GET("https://api.spotify.com/v1/me/player/currently-playing")
            local current_artits = ""
            --activity checks
            if not current_song then
                continue
            end
            
            if not current_song.item then
                continue
            end
            
            --get artists
            local all_artists = {}
            for _, current_artits in next, current_song.item.artists do
                table.insert(all_artists, current_artits.name)
            end
            --// song name / artists
            SongArtist.Text = string.format("%s%s", table.concat(all_artists, ", "), current_artits)
            SongName.Text = current_song.item.name
            --// song time / duration
            local song_duration, song_progress = math.floor(current_song.item.duration_ms/1000), math.floor(current_song.progress_ms/1000)
            ProgressBar.Size = UDim2.new(song_progress/song_duration,0,1,0)
            --// cover art

            local Cover_URL = game:HttpGet(current_song.item.album.images[1].url)
            DrawCover.Data = Cover_URL
            
        end
    end)
end
DrawCover.Position = Vector2.new(CoverArt.AbsolutePosition.X, CoverArt.AbsolutePosition.Y+36)
--// Buttons
--// play / pause/ next/ prev
local DW_Playing = true
local DW_debounce = false
PlaySong.MouseButton1Down:Connect(function()
    if DW_debounce == false and DW_Playing == false then
        DW_debounce = true
        DW_Playing = true
        spotify_PUT("https://api.spotify.com/v1/me/player/play")
        PlaySong.Visible = false
        PauseSong.Visible = true
        DW_debounce = false
    end
end)
PauseSong.MouseButton1Down:Connect(function()
    if DW_debounce == false and DW_Playing == true then
        DW_debounce = true
        DW_Playing = false
        spotify_PUT("https://api.spotify.com/v1/me/player/pause")
        PauseSong.Visible = false
        PlaySong.Visible = true
        DW_debounce = false
    end
end)

function forwards()
    spotify_POST("https://api.spotify.com/v1/me/player/next")
end
SkipSong.MouseButton1Down:Connect(forwards)
function backwards()
    spotify_POST("https://api.spotify.com/v1/me/player/previous")
end
PreviousSong.MouseButton1Down:Connect(backwards)

Update_Current()



--// SETTINGS -------------------------[      ]



local MiniplayerSettings = Instance.new("Frame")
local SettingsTitle = Instance.new("TextLabel")
local underline = Instance.new("Frame")
local VerisionNum = Instance.new("TextLabel")
local UiOptions_Title = Instance.new("TextLabel")
local KeybindsTitle = Instance.new("TextLabel")
local ForceQuit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local AuthTItle = Instance.new("TextLabel")
local OAuthTokenTextBox = Instance.new("TextBox")
local SubmitAuth = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local KeybindsTitle_2 = Instance.new("TextLabel")
local Option_SongChangeNotification = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Option_UiDraggable = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Credits = Instance.new("TextLabel")

MiniplayerSettings.Name = "MiniplayerSettings"
MiniplayerSettings.Parent = SpotifyMiniplayer
MiniplayerSettings.AnchorPoint = Vector2.new(0.5, 0.5)
MiniplayerSettings.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
MiniplayerSettings.BorderColor3 = Color3.fromRGB(30, 30, 30)
MiniplayerSettings.Position = UDim2.new(0.5, 0, 0.5, 0)
MiniplayerSettings.Size = UDim2.new(0, 415, 0, 580)
MiniplayerSettings.Visible = false

SettingsTitle.Name = "SettingsTitle"
SettingsTitle.Parent = MiniplayerSettings
SettingsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsTitle.BackgroundTransparency = 1.000
SettingsTitle.Position = UDim2.new(0.0160562173, 0, 0.00482756505, 0)
SettingsTitle.Size = UDim2.new(0, 205, 0, 23)
SettingsTitle.ZIndex = 6
SettingsTitle.Font = Enum.Font.Arial
SettingsTitle.Text = "Settings"
SettingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SettingsTitle.TextScaled = true
SettingsTitle.TextSize = 23.000
SettingsTitle.TextStrokeTransparency = 0.000
SettingsTitle.TextWrapped = true
SettingsTitle.TextXAlignment = Enum.TextXAlignment.Left
SettingsTitle.TextYAlignment = Enum.TextYAlignment.Top

underline.Name = "underline"
underline.Parent = SettingsTitle
underline.AnchorPoint = Vector2.new(0.5, 0.5)
underline.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
underline.Position = UDim2.new(0.190763056, 0, 1.13043475, 0)
underline.Size = UDim2.new(0.393574297, 0, 0, 1)

VerisionNum.Name = "VerisionNum"
VerisionNum.Parent = SettingsTitle
VerisionNum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VerisionNum.BackgroundTransparency = 1.000
VerisionNum.Position = UDim2.new(0.384202003, 0, -0.149370342, 0)
VerisionNum.Size = UDim2.new(0, 82, 0, 14)
VerisionNum.ZIndex = 5
VerisionNum.Font = Enum.Font.Arial
VerisionNum.Text = "Ver_1.1"
VerisionNum.TextColor3 = Color3.fromRGB(255, 255, 255)
VerisionNum.TextScaled = true
VerisionNum.TextSize = 23.000
VerisionNum.TextStrokeTransparency = 0.000
VerisionNum.TextTransparency = 0.680
VerisionNum.TextWrapped = true
VerisionNum.TextXAlignment = Enum.TextXAlignment.Left
VerisionNum.TextYAlignment = Enum.TextYAlignment.Top

UiOptions_Title.Name = "UiOptions_Title"
UiOptions_Title.Parent = MiniplayerSettings
UiOptions_Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UiOptions_Title.BackgroundTransparency = 1.000
UiOptions_Title.Position = UDim2.new(0.0160562173, 0, 0.10137929, 0)
UiOptions_Title.Size = UDim2.new(0, 185, 0, 20)
UiOptions_Title.ZIndex = 5
UiOptions_Title.Font = Enum.Font.Arial
UiOptions_Title.Text = "options"
UiOptions_Title.TextColor3 = Color3.fromRGB(209, 209, 209)
UiOptions_Title.TextScaled = true
UiOptions_Title.TextSize = 23.000
UiOptions_Title.TextStrokeTransparency = 0.000
UiOptions_Title.TextWrapped = true
UiOptions_Title.TextXAlignment = Enum.TextXAlignment.Left
UiOptions_Title.TextYAlignment = Enum.TextYAlignment.Top

KeybindsTitle.Name = "KeybindsTitle"
KeybindsTitle.Parent = MiniplayerSettings
KeybindsTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeybindsTitle.BackgroundTransparency = 1.000
KeybindsTitle.Position = UDim2.new(0.553405643, 0, 0.10137929, 0)
KeybindsTitle.Size = UDim2.new(0, 185, 0, 20)
KeybindsTitle.ZIndex = 5
KeybindsTitle.Font = Enum.Font.Arial
KeybindsTitle.Text = "keybinds"
KeybindsTitle.TextColor3 = Color3.fromRGB(209, 209, 209)
KeybindsTitle.TextScaled = true
KeybindsTitle.TextSize = 23.000
KeybindsTitle.TextStrokeTransparency = 0.000
KeybindsTitle.TextWrapped = true
KeybindsTitle.TextXAlignment = Enum.TextXAlignment.Left
KeybindsTitle.TextYAlignment = Enum.TextYAlignment.Top

ForceQuit.Name = "ForceQuit"
ForceQuit.Parent = MiniplayerSettings
ForceQuit.BackgroundColor3 = Color3.fromRGB(255, 80, 89)
ForceQuit.BorderSizePixel = 0
ForceQuit.Position = UDim2.new(0.787951827, 0, 0.963793099, 0)
ForceQuit.Size = UDim2.new(0, 80, 0, 15)
ForceQuit.Font = Enum.Font.SourceSans
ForceQuit.Text = "Force Quit"
ForceQuit.TextColor3 = Color3.fromRGB(0, 0, 0)
ForceQuit.TextSize = 14.000

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = ForceQuit

AuthTItle.Name = "AuthTItle"
AuthTItle.Parent = MiniplayerSettings
AuthTItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AuthTItle.BackgroundTransparency = 1.000
AuthTItle.Position = UDim2.new(0.0160562173, 0, 0.482413769, 0)
AuthTItle.Size = UDim2.new(0, 185, 0, 20)
AuthTItle.ZIndex = 5
AuthTItle.Font = Enum.Font.Arial
AuthTItle.Text = "0AuthToken"
AuthTItle.TextColor3 = Color3.fromRGB(209, 209, 209)
AuthTItle.TextScaled = true
AuthTItle.TextSize = 23.000
AuthTItle.TextStrokeTransparency = 0.000
AuthTItle.TextWrapped = true
AuthTItle.TextXAlignment = Enum.TextXAlignment.Left
AuthTItle.TextYAlignment = Enum.TextYAlignment.Top

OAuthTokenTextBox.Parent = MiniplayerSettings
OAuthTokenTextBox.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
OAuthTokenTextBox.BorderColor3 = Color3.fromRGB(44, 44, 44)
OAuthTokenTextBox.Position = UDim2.new(0.0144578312, 0, 0.529310346, 0)
OAuthTokenTextBox.Size = UDim2.new(0, 401, 0, 16)
OAuthTokenTextBox.Font = Enum.Font.SourceSans
OAuthTokenTextBox.PlaceholderColor3 = Color3.fromRGB(208, 208, 208)
OAuthTokenTextBox.PlaceholderText = "Enter an OAuth Token..."
OAuthTokenTextBox.Text = API_SETTINGS.API_TOKEN
OAuthTokenTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
OAuthTokenTextBox.TextSize = 14.000
OAuthTokenTextBox.TextStrokeTransparency = 0
OAuthTokenTextBox.TextXAlignment = Enum.TextXAlignment.Left

SubmitAuth.Name = "SubmitAuth"
SubmitAuth.Parent = MiniplayerSettings
SubmitAuth.BackgroundColor3 = Color3.fromRGB(114, 255, 82)
SubmitAuth.BorderSizePixel = 0
SubmitAuth.Position = UDim2.new(0.0144578218, 0, 0.567241371, 0)
SubmitAuth.Size = UDim2.new(0, 80, 0, 15)
SubmitAuth.Font = Enum.Font.SourceSans
SubmitAuth.Text = "Submit"
SubmitAuth.TextColor3 = Color3.fromRGB(0, 0, 0)
SubmitAuth.TextSize = 14.000

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = SubmitAuth

KeybindsTitle_2.Name = "KeybindsTitle"
KeybindsTitle_2.Parent = MiniplayerSettings
KeybindsTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeybindsTitle_2.BackgroundTransparency = 1.000
KeybindsTitle_2.Position = UDim2.new(0.74617672, 0, 0.101379283, 0)
KeybindsTitle_2.Size = UDim2.new(0, 82, 0, 14)
KeybindsTitle_2.ZIndex = 5
KeybindsTitle_2.Font = Enum.Font.Arial
KeybindsTitle_2.Text = "Added Soon..."
KeybindsTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
KeybindsTitle_2.TextScaled = true
KeybindsTitle_2.TextSize = 23.000
KeybindsTitle_2.TextStrokeTransparency = 0.000
KeybindsTitle_2.TextTransparency = 0.680
KeybindsTitle_2.TextWrapped = true
KeybindsTitle_2.TextXAlignment = Enum.TextXAlignment.Left
KeybindsTitle_2.TextYAlignment = Enum.TextYAlignment.Top

Option_SongChangeNotification.Name = "Option_SongChangeNotification"
Option_SongChangeNotification.Parent = MiniplayerSettings
Option_SongChangeNotification.BackgroundColor3 = Color3.fromRGB(114, 255, 82)
Option_SongChangeNotification.BackgroundTransparency = 1.000
Option_SongChangeNotification.BorderSizePixel = 0
Option_SongChangeNotification.Position = UDim2.new(0.0144578312, 0, 0.134482756, 0)
Option_SongChangeNotification.Size = UDim2.new(0, 185, 0, 15)
Option_SongChangeNotification.Font = Enum.Font.SourceSans
Option_SongChangeNotification.Text = "Song Change Notification"
Option_SongChangeNotification.TextColor3 = Color3.fromRGB(255, 80, 89)
Option_SongChangeNotification.TextSize = 14.000
Option_SongChangeNotification.TextXAlignment = Enum.TextXAlignment.Left

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = Option_SongChangeNotification

Option_UiDraggable.Name = "Option_UiDraggable"
Option_UiDraggable.Parent = MiniplayerSettings
Option_UiDraggable.BackgroundColor3 = Color3.fromRGB(114, 255, 82)
Option_UiDraggable.BackgroundTransparency = 1.000
Option_UiDraggable.BorderSizePixel = 0
Option_UiDraggable.Position = UDim2.new(0.0144578312, 0, 0.160344824, 0)
Option_UiDraggable.Size = UDim2.new(0, 185, 0, 15)
Option_UiDraggable.Font = Enum.Font.SourceSans
Option_UiDraggable.Text = "Allow For MiniPlayer To Be Draggable"
Option_UiDraggable.TextColor3 = Color3.fromRGB(255, 80, 89)
Option_UiDraggable.TextSize = 14.000
Option_UiDraggable.TextXAlignment = Enum.TextXAlignment.Left

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = Option_UiDraggable

Credits.Name = "Credits"
Credits.Parent = MiniplayerSettings
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.01, 0, 0.96, 0)
Credits.Size = UDim2.new(0, 252, 0, 22)
Credits.ZIndex = 5
Credits.Font = Enum.Font.Arial
Credits.Text = "From Project ATLAS"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = false
Credits.TextSize = 14
Credits.TextStrokeTransparency = 0.000
Credits.TextTransparency = 0.680
Credits.TextWrapped = true
Credits.TextXAlignment = Enum.TextXAlignment.Left
Credits.TextYAlignment = Enum.TextYAlignment.Bottom

--// Gear Icon function
GR_settings.MouseButton1Down:Connect(function() MiniplayerSettings.Visible = not MiniplayerSettings.Visible end)
--//options
local EnabledSelectClr, DisabledSelectClr = Color3.fromRGB(114, 255, 82), Color3.fromRGB(255, 80, 89)
--/SongChangeNotification
if API_SETTINGS.SongChangeNotification == true then Option_SongChangeNotification.TextColor3 = EnabledSelectClr else Option_SongChangeNotification.TextColor3 = DisabledSelectClr end -- setup
Option_SongChangeNotification.MouseButton1Down:Connect(function()
    --Come Back When UI is Done
    API_SETTINGS.SongChangeNotification = not API_SETTINGS.SongChangeNotification
    if API_SETTINGS.SongChangeNotification == true then Option_SongChangeNotification.TextColor3 = EnabledSelectClr else Option_SongChangeNotification.TextColor3 = DisabledSelectClr end 
end)

--/DraggableMiniplayer
if API_SETTINGS.DraggableMiniplayer == true then Option_UiDraggable.TextColor3 = EnabledSelectClr else Option_UiDraggable.TextColor3 = DisabledSelectClr end -- setup
Option_UiDraggable.MouseButton1Down:Connect(function()
    
    API_SETTINGS.DraggableMiniplayer = not API_SETTINGS.DraggableMiniplayer
    
    if API_SETTINGS.DraggableMiniplayer == true then Option_UiDraggable.TextColor3 = EnabledSelectClr else Option_UiDraggable.TextColor3 = DisabledSelectClr end
end)
--/ForceQuit
ForceQuit.MouseButton1Down:Connect(function()
    if game.CoreGui:FindFirstChild("SpotifyMiniplayer") then
        local var = game.CoreGui:FindFirstChild("SpotifyMiniplayer")
        var:Destroy()
        DrawCover:Remove()
    end
end)
--/OauthTokenSubmit
SubmitAuth.MouseButton1Down:Connect(function()
    API_SETTINGS.API_TOKEN = OAuthTokenTextBox.Text
end)


--// Notification system
local function NewSongNotif(DATA_SONG, DATA_ARTISTS)
DATA_SONG = DATA_SONG or "SongName"
DATA_ARTISTS = DATA_ARTISTS or "Artists"
local newsongstring = DATA_SONG..", By "..DATA_ARTISTS

local NowPlayingNotification = Instance.new("Frame")
local NowPlaying_TopBar = Instance.new("Frame")
local NowPlayingTitle = Instance.new("TextLabel")
local NameOfSongAndArtists = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")

NowPlayingNotification.Name = "NowPlayingNotification"
NowPlayingNotification.Parent = SpotifyMiniplayer
NowPlayingNotification.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
NowPlayingNotification.BorderSizePixel = 0
NowPlayingNotification.Position = UDim2.new(0.004,0,0.88,0)
NowPlayingNotification.Size = UDim2.new(0, 164, 0, 25)
NowPlayingNotification.AutomaticSize = 'X'
NowPlayingNotification.Visible = API_SETTINGS.SongChangeNotification

NowPlaying_TopBar.Name = "NowPlaying_TopBar"
NowPlaying_TopBar.Parent = NowPlayingNotification
NowPlaying_TopBar.BackgroundColor3 = Color3.fromRGB(92, 255, 92)
NowPlaying_TopBar.BorderSizePixel = 0
NowPlaying_TopBar.Position = UDim2.new(0,0,-0.60,0)
NowPlaying_TopBar.Size = UDim2.new(1, 28, 0, 15)

NowPlayingTitle.Name = "NowPlayingTitle"
NowPlayingTitle.Parent = NowPlaying_TopBar
NowPlayingTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NowPlayingTitle.BackgroundTransparency = 1.000
NowPlayingTitle.Size = UDim2.new(0, 150, 0, 15)
NowPlayingTitle.ZIndex = 5
NowPlayingTitle.Position = UDim2.new(0.002, 0, 0, 0)
NowPlayingTitle.Font = Enum.Font.SourceSansBold
NowPlayingTitle.Text = "Now Playing:"
NowPlayingTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
NowPlayingTitle.TextScaled = true
NowPlayingTitle.TextSize = 23.000
NowPlayingTitle.TextWrapped = true
NowPlayingTitle.TextXAlignment = Enum.TextXAlignment.Left
NowPlayingTitle.TextYAlignment = Enum.TextYAlignment.Top

NameOfSongAndArtists.Name = "NameOfSongAndArtists"
NameOfSongAndArtists.Parent = NowPlayingNotification
NameOfSongAndArtists.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
NameOfSongAndArtists.BackgroundTransparency = 1.000
NameOfSongAndArtists.Position = UDim2.new(0, 0, 0.159999996, 0)
NameOfSongAndArtists.Size = UDim2.new(0.443107784, 0, 0, 17)
NameOfSongAndArtists.ZIndex = 5
NameOfSongAndArtists.Font = Enum.Font.SourceSansBold
NameOfSongAndArtists.Text = newsongstring
NameOfSongAndArtists.TextColor3 = Color3.fromRGB(255, 255, 255)
NameOfSongAndArtists.TextSize = 20.000
NameOfSongAndArtists.AutomaticSize = 'X'
NameOfSongAndArtists.TextXAlignment = Enum.TextXAlignment.Left
NameOfSongAndArtists.TextYAlignment = Enum.TextYAlignment.Top

UIPadding.Parent = NowPlayingNotification
UIPadding.PaddingRight = UDim.new(0, 25)

local TS = game:GetService("TweenService")
task.wait(3)
TS:Create(NowPlayingNotification, TweenInfo.new(2), {BackgroundTransparency = 1}):Play()
TS:Create(NowPlaying_TopBar, TweenInfo.new(2), {BackgroundTransparency = 1}):Play()
TS:Create(NowPlayingTitle, TweenInfo.new(2), {TextTransparency = 1}):Play()
TS:Create(NameOfSongAndArtists, TweenInfo.new(2), {TextTransparency = 1}):Play()
task.wait(2.1)
NowPlayingNotification:Destroy()
end

SongName:GetPropertyChangedSignal("Text"):Connect(function()
    NewSongNotif(SongName.Text , SongArtist.Text)
end)

--// If API KEY is not detected
if API_SETTINGS.API_TOKEN == "" or API_SETTINGS.API_TOKEN == " " then
    NewSongNotif("An APITOKEN wasn't detected or is invalid. You can enter a new APIToken", "going into settings")
end










local UIS = game:GetService('UserInputService')
local frame = SongFrame
local dragToggle = nil
local dragSpeed = 0
local dragStart = nil
local startPos = nil

local function updateInput(input)
    if API_SETTINGS.DraggableMiniplayer == true then
         local delta = input.Position - dragStart
         local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
         startPos.Y.Scale, startPos.Y.Offset + delta.Y)
         game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
    end
end

frame.InputBegan:Connect(function(input)
 if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
  dragToggle = true
  dragStart = input.Position
  startPos = frame.Position
  input.Changed:Connect(function()
   if input.UserInputState == Enum.UserInputState.End then
    dragToggle = false
    DrawCover.Position = Vector2.new(CoverArt.AbsolutePosition.X, CoverArt.AbsolutePosition.Y+36)
   end
  end)
 end
end)

UIS.InputChanged:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
  if dragToggle then
   updateInput(input)
  end
 end
end)



VerisionNum.Text = API_SETTINGS.ver
end
API_SETTINGS.Init()
