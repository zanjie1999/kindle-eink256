.class final Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;
.super Ljava/lang/Object;
.source "AbstractLibraryFilter.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AbstractLibraryFilter;->buildItemsAndGroups(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;->INSTANCE:Lcom/amazon/kcp/library/AbstractLibraryFilter$buildItemsAndGroups$downloadedFilterItem$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isVisible()Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterEnabled()Z

    move-result v0

    return v0
.end method
