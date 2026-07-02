.class public interface abstract Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
.super Ljava/lang/Object;
.source "ITableOfContentsEntry.java"


# static fields
.field public static final TYPE_ARTICLE:Ljava/lang/String; = "article"

.field public static final TYPE_BOOK:Ljava/lang/String; = "book"

.field public static final TYPE_CHAPTER:Ljava/lang/String; = "chapter"

.field public static final TYPE_INFLOW_LIST:Ljava/lang/String; = "indicies"

.field public static final TYPE_PERIODICAL:Ljava/lang/String; = "periodical"

.field public static final TYPE_SECTION:Ljava/lang/String; = "section"

.field public static final TYPE_TITLE_PAGE:Ljava/lang/String; = "titlepage"

.field public static final TYPE_VERSE:Ljava/lang/String; = "verse"


# virtual methods
.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getNodeLevel()I
.end method

.method public abstract getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method
