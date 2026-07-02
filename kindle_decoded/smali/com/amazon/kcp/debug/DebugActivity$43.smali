.class Lcom/amazon/kcp/debug/DebugActivity$43;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->onDumpDatabases(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivity;)V
    .locals 0

    .line 2364
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity$43;->this$0:Lcom/amazon/kcp/debug/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".db"

    .line 2366
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
