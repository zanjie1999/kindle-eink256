.class public Lcom/amazon/kindle/cms/DefaultCMSItemFactory;
.super Ljava/lang/Object;
.source "DefaultCMSItemFactory.java"

# interfaces
.implements Lcom/amazon/kindle/cms/ICMSItemFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBookItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/BookItem;
    .locals 13
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

    .line 22
    new-instance v12, Lcom/amazon/kindle/cms/api/BookItem;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/cms/api/BookItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;)V

    return-object v12
.end method

.method public createDocItem(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/DocItem;
    .locals 13
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

    .line 29
    new-instance v12, Lcom/amazon/kindle/cms/api/DocItem;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/amazon/kindle/cms/api/DocItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;)V

    return-object v12
.end method

.method public createPeriodicalItem(Lcom/amazon/kindle/content/ContentMetadata;Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;Ljava/lang/String;JZLjava/lang/String;Ljava/util/Date;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/PeriodicalItem;
    .locals 14
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

    .line 37
    new-instance v13, Lcom/amazon/kindle/cms/api/PeriodicalItem;

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/cms/api/PeriodicalItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/cms/api/ItemLocation;Lcom/amazon/kindle/cms/api/Progress;Lcom/amazon/kindle/cms/api/SortableName;Lcom/amazon/kindle/cms/api/SortableName;Ljava/util/EnumSet;Ljava/util/Date;Lcom/amazon/kindle/cms/api/Thumbnail;Ljava/lang/String;Ljava/util/EnumSet;Lcom/amazon/kindle/cms/api/Progress;Ljava/util/Date;)V

    return-object v13
.end method
