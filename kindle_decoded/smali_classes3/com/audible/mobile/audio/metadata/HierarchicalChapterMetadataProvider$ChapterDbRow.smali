.class final Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;
.super Ljava/lang/Object;
.source "HierarchicalChapterMetadataProvider.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChapterDbRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:I

.field private final index:I

.field private final length:I

.field private final level:I

.field private final parentId:I

.field private final startTime:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->id:I

    iput p2, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->parentId:I

    iput p3, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->level:I

    iput p4, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->index:I

    iput p5, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->startTime:I

    iput p6, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->length:I

    iput-object p7, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->startTime:I

    iget p1, p1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->startTime:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 129
    check-cast p1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->compareTo(Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;)I

    move-result p1

    return p1
.end method

.method public final getId()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->id:I

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->index:I

    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->length:I

    return v0
.end method

.method public final getLevel()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->level:I

    return v0
.end method

.method public final getParentId()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->parentId:I

    return v0
.end method

.method public final getStartTime()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->startTime:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->title:Ljava/lang/String;

    return-object v0
.end method
