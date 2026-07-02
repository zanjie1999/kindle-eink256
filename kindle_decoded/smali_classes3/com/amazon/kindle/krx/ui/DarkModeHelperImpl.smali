.class public final Lcom/amazon/kindle/krx/ui/DarkModeHelperImpl;
.super Ljava/lang/Object;
.source "DarkModeHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/DarkModeHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDarkModePhaseEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 31
    invoke-static {}, Lcom/amazon/kindle/krx/ui/DarkModeHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Input for Dark Mode Phase Number is nonexistent/unsupported"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result p1

    goto :goto_0

    .line 28
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result p1

    goto :goto_0

    .line 27
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseOneEnabled()Z

    move-result p1

    :goto_0
    return p1
.end method
