.class Lorg/xbmc/kodi/Main$1$1;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbmc/kodi/Main$1;->onSystemUiVisibilityChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/xbmc/kodi/Main$1;


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Main$1;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/xbmc/kodi/Main$1$1;->this$1:Lorg/xbmc/kodi/Main$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lorg/xbmc/kodi/Main$1$1;->this$1:Lorg/xbmc/kodi/Main$1;

    iget-object v0, v0, Lorg/xbmc/kodi/Main$1;->this$0:Lorg/xbmc/kodi/Main;

    # getter for: Lorg/xbmc/kodi/Main;->thisView:Landroid/view/View;
    invoke-static {v0}, Lorg/xbmc/kodi/Main;->access$000(Lorg/xbmc/kodi/Main;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :cond_0
    return-void
.end method
