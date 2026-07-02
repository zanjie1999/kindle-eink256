.class final Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;
.super Ljava/lang/Object;
.source "MopDeprecationUtils.kt"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/MopDeprecationUtils;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;

    invoke-direct {v0}, Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;->INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils$scan$localMopBooks$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 2

    .line 38
    sget-object v0, Lcom/amazon/kcp/util/MopDeprecationUtils;->INSTANCE:Lcom/amazon/kcp/util/MopDeprecationUtils;

    const-string v1, "metadata"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/MopDeprecationUtils;->access$isLocalMopBook(Lcom/amazon/kcp/util/MopDeprecationUtils;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
