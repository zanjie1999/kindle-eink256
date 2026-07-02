.class Lcom/amazon/kcp/debug/DebugActivityV2$2;
.super Ljava/lang/Object;
.source "DebugActivityV2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivityV2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DebugActivityV2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DebugActivityV2;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugActivityV2$2;->this$0:Lcom/amazon/kcp/debug/DebugActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;)I
    .locals 2

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "App Info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 99
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 94
    check-cast p1, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    check-cast p2, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivityV2$2;->compare(Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;)I

    move-result p1

    return p1
.end method
