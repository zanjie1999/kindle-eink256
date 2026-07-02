.class public interface abstract Lcom/amazon/kindle/cms/ICMSItemFactory;
.super Ljava/lang/Object;
.source "ICMSItemFactory.java"


# virtual methods
.method public abstract createBookItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/BookItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$GlobalFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/BookItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "JZZ",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/cms/api/BookItem;"
        }
    .end annotation
.end method

.method public abstract createDocItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/DocItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/DocItem$GlobalFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/DocItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/cms/api/DocItem;"
        }
    .end annotation
.end method

.method public abstract createPeriodicalItem(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/PeriodicalItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/cms/api/ItemLocation;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Lcom/amazon/kindle/cms/api/SortableName;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/amazon/kindle/cms/api/Thumbnail;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;",
            ">;",
            "Lcom/amazon/kindle/cms/api/Progress;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/cms/api/PeriodicalItem;"
        }
    .end annotation
.end method
