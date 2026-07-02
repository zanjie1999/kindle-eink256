.class final Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;
.super Ljava/lang/Object;
.source "HierarchicalChapterMetadataProvider.kt"

# interfaces
.implements Lcom/audible/mobile/sqlite/RowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/sqlite/RowMapper<",
        "Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;

    invoke-direct {v0}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;->INSTANCE:Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mapRow(Landroid/database/Cursor;I)Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;
    .locals 8

    const-string p2, "CHAPTER_ID"

    .line 118
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string p2, "PARENT_ID"

    .line 119
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string p2, "LEVEL"

    .line 120
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string p2, "GLOBAL_INDEX"

    .line 121
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string p2, "START_TIME_MS"

    .line 122
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string p2, "LENGTH_MS"

    .line 123
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string p2, "TITLE"

    .line 124
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 125
    new-instance p1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    const-string p2, "title"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;-><init>(IIIIIILjava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;->mapRow(Landroid/database/Cursor;I)Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    move-result-object p1

    return-object p1
.end method
