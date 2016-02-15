.class Lorg/xbmc/kodi/Main$2;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xbmc/kodi/Main;->runNativeOnUiThread(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xbmc/kodi/Main;

.field final synthetic val$funcAddr:J

.field final synthetic val$variantAddr:J


# direct methods
.method constructor <init>(Lorg/xbmc/kodi/Main;JJ)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/xbmc/kodi/Main$2;->this$0:Lorg/xbmc/kodi/Main;

    iput-wide p2, p0, Lorg/xbmc/kodi/Main$2;->val$funcAddr:J

    iput-wide p4, p0, Lorg/xbmc/kodi/Main$2;->val$variantAddr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lorg/xbmc/kodi/Main$2;->this$0:Lorg/xbmc/kodi/Main;

    iget-wide v1, p0, Lorg/xbmc/kodi/Main$2;->val$funcAddr:J

    iget-wide v3, p0, Lorg/xbmc/kodi/Main$2;->val$variantAddr:J

    # invokes: Lorg/xbmc/kodi/Main;->_callNative(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lorg/xbmc/kodi/Main;->access$200(Lorg/xbmc/kodi/Main;JJ)V

    .line 133
    return-void
.end method
