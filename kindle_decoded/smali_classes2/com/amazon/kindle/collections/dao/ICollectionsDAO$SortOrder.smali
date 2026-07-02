.class public final enum Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;
.super Ljava/lang/Enum;
.source "ICollectionsDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/collections/dao/ICollectionsDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

.field public static final enum ASC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

.field public static final enum DESC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    const/4 v1, 0x0

    const-string v2, "ASC"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->ASC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    .line 23
    new-instance v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    const/4 v2, 0x1

    const-string v3, "DESC"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->DESC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    .line 21
    sget-object v4, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->ASC:Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->$VALUES:[Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->$VALUES:[Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    invoke-virtual {v0}, [Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/collections/dao/ICollectionsDAO$SortOrder;

    return-object v0
.end method
