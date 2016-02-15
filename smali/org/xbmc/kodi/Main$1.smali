.class Lorg/xbmc/kodi/Main$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbmc/kodi/Main;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbmc/kodi/Main;


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Main;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lorg/xbmc/kodi/Main$1;->this$0:Lorg/xbmc/kodi/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 50
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/xbmc/kodi/Main$1;->this$0:Lorg/xbmc/kodi/Main;

    # getter for: Lorg/xbmc/kodi/Main;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lorg/xbmc/kodi/Main;->access$100(Lorg/xbmc/kodi/Main;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/xbmc/kodi/Main$1$1;

    invoke-direct {v1, p0}, Lorg/xbmc/kodi/Main$1$1;-><init>(Lorg/xbmc/kodi/Main$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    :cond_0
    return-void
.end method
