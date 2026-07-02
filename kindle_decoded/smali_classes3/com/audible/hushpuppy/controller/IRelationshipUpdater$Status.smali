.class public final enum Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
.super Ljava/lang/Enum;
.source "IRelationshipUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/IRelationshipUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

.field public static final enum FAILED:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

.field public static final enum SUCCESSFUL:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

.field public static final enum UPDATED_RECENTLY:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

.field public static final enum UPDATE_IN_PROGRESS:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    const/4 v1, 0x0

    const-string v2, "UPDATE_IN_PROGRESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->UPDATE_IN_PROGRESS:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    .line 27
    new-instance v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    const/4 v2, 0x1

    const-string v3, "UPDATED_RECENTLY"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->UPDATED_RECENTLY:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    .line 31
    new-instance v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    const/4 v3, 0x2

    const-string v4, "SUCCESSFUL"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->SUCCESSFUL:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    .line 35
    new-instance v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->FAILED:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    .line 17
    sget-object v6, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->UPDATE_IN_PROGRESS:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->UPDATED_RECENTLY:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->SUCCESSFUL:Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->$VALUES:[Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->$VALUES:[Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/IRelationshipUpdater$Status;

    return-object v0
.end method
