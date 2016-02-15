.class public Lorg/xbmc/kodi/XBMCOnAudioFocusChangeListener;
.super Ljava/lang/Object;
.source "XBMCOnAudioFocusChangeListener.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native _onAudioFocusChange(I)V
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/XBMCOnAudioFocusChangeListener;->_onAudioFocusChange(I)V

    .line 15
    return-void
.end method
