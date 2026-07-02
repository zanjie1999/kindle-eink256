.class final Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;
.super Ljava/lang/Object;
.source "FalkorProcessesPlugin.kt"

# interfaces
.implements Lcom/amazon/kindle/content/filter/ContentMetadataFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/FalkorProcessesPlugin;->cleanSamples(Lcom/amazon/kindle/content/ILibraryService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;->INSTANCE:Lcom/amazon/kcp/library/FalkorProcessesPlugin$cleanSamples$idsToRemove$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
