.class Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$3;
.super Ljava/lang/Object;
.source "MobileWeblabDebugPageProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->sortWeblabList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$3;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;Lcom/amazon/kindle/krx/mobileweblab/IWeblab;)I
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$3;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-static {v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->access$000(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$3;->this$1:Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-static {v3}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;->access$000(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    move-result-object v3

    invoke-interface {p2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    return v2

    .line 183
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 171
    check-cast p1, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    check-cast p2, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage$3;->compare(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;Lcom/amazon/kindle/krx/mobileweblab/IWeblab;)I

    move-result p1

    return p1
.end method
