.class final Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReaderColumnConfig.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ColumnConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;
    .locals 2

    .line 26
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    new-instance v1, Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;

    invoke-direct {v1}, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;-><init>()V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ColumnConfigManager$INSTANCE$2;->invoke()Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;

    move-result-object v0

    return-object v0
.end method
