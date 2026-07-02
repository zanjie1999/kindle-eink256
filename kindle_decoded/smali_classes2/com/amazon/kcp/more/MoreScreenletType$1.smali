.class final enum Lcom/amazon/kcp/more/MoreScreenletType$1;
.super Lcom/amazon/kcp/more/MoreScreenletType;
.source "MoreScreenletType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/more/MoreScreenletType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/more/MoreScreenletType;-><init>(Ljava/lang/String;ILcom/amazon/kcp/more/MoreScreenletType$1;)V

    return-void
.end method


# virtual methods
.method public createInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/amazon/kcp/more/MoreScreenlet;->newInstance(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/krx/ui/Screenlet;

    move-result-object p1

    return-object p1
.end method
