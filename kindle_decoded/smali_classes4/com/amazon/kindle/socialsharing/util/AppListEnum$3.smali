.class final enum Lcom/amazon/kindle/socialsharing/util/AppListEnum$3;
.super Lcom/amazon/kindle/socialsharing/util/AppListEnum;
.source "AppListEnum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/socialsharing/util/AppListEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZ)V
    .locals 14

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    .line 49
    invoke-direct/range {v0 .. v13}, Lcom/amazon/kindle/socialsharing/util/AppListEnum;-><init>(Ljava/lang/String;ILcom/amazon/kindle/socialsharing/util/IPackageNameValidator;IZIIILjava/lang/String;Ljava/lang/Class;ZZLcom/amazon/kindle/socialsharing/util/AppListEnum$1;)V

    return-void
.end method


# virtual methods
.method public isBlockedInCurrentMarketPlace()Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->isUserMarketPlaceChina()Z

    move-result v0

    return v0
.end method

.method public isVersionBlocked(I)Z
    .locals 1

    const/16 v0, 0xb4

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
