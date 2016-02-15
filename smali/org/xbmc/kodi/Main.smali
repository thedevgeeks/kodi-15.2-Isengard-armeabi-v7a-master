.class public Lorg/xbmc/kodi/Main;
.super Landroid/app/NativeActivity;
.source "Main.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mSettingsContentObserver:Lorg/xbmc/kodi/XBMCSettingsContentObserver;

.field private thisView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/xbmc/kodi/Main;->handler:Landroid/os/Handler;

    .line 23
    return-void
.end method

.method private native _callNative(JJ)V
.end method

.method static synthetic access$000(Lorg/xbmc/kodi/Main;)Landroid/view/View;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xbmc/kodi/Main;->thisView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lorg/xbmc/kodi/Main;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xbmc/kodi/Main;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/xbmc/kodi/Main;JJ)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xbmc/kodi/Main;->_callNative(JJ)V

    return-void
.end method

.method private runNativeOnUiThread(JJ)V
    .locals 6

    .prologue
    .line 127
    new-instance v0, Lorg/xbmc/kodi/Main$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbmc/kodi/Main$2;-><init>(Lorg/xbmc/kodi/Main;JJ)V

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method


# virtual methods
.method native _onNewIntent(Landroid/content/Intent;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 33
    :try_start_0
    const-string v0, "smbclient"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    const-string v0, "kodi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/xbmc/kodi/Main;->setVolumeControlStream(I)V

    .line 41
    new-instance v0, Lorg/xbmc/kodi/XBMCSettingsContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lorg/xbmc/kodi/XBMCSettingsContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/xbmc/kodi/Main;->mSettingsContentObserver:Lorg/xbmc/kodi/XBMCSettingsContentObserver;

    .line 42
    invoke-virtual {p0}, Lorg/xbmc/kodi/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/xbmc/kodi/Main;->mSettingsContentObserver:Lorg/xbmc/kodi/XBMCSettingsContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 44
    invoke-virtual {p0}, Lorg/xbmc/kodi/Main;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/xbmc/kodi/Main;->thisView:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lorg/xbmc/kodi/Main;->thisView:Landroid/view/View;

    new-instance v1, Lorg/xbmc/kodi/Main$1;

    invoke-direct {v1, p0}, Lorg/xbmc/kodi/Main$1;-><init>(Lorg/xbmc/kodi/Main;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 75
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/xbmc/kodi/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/xbmc/kodi/Main;->mSettingsContentObserver:Lorg/xbmc/kodi/XBMCSettingsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 121
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/xbmc/kodi/Main;->_onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v0, "Main"

    const-string v1, "Native not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lorg/xbmc/kodi/Main;->thisView:Landroid/view/View;

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 92
    invoke-virtual {p0}, Lorg/xbmc/kodi/Main;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 93
    return-void
.end method
