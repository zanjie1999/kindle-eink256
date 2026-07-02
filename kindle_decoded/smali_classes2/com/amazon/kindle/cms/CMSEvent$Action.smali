.class public final enum Lcom/amazon/kindle/cms/CMSEvent$Action;
.super Ljava/lang/Enum;
.source "CMSEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/CMSEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/CMSEvent$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/CMSEvent$Action;

.field public static final enum DELETE:Lcom/amazon/kindle/cms/CMSEvent$Action;

.field public static final enum REMOVE_FROM_CAROUSEL:Lcom/amazon/kindle/cms/CMSEvent$Action;

.field public static final enum SYNC:Lcom/amazon/kindle/cms/CMSEvent$Action;

.field public static final enum UPDATE:Lcom/amazon/kindle/cms/CMSEvent$Action;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/cms/CMSEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSEvent$Action;->UPDATE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v2, 0x1

    const-string v3, "DELETE"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/cms/CMSEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSEvent$Action;->DELETE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v3, 0x2

    const-string v4, "SYNC"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kindle/cms/CMSEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSEvent$Action;->SYNC:Lcom/amazon/kindle/cms/CMSEvent$Action;

    new-instance v0, Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v4, 0x3

    const-string v5, "REMOVE_FROM_CAROUSEL"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/kindle/cms/CMSEvent$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/CMSEvent$Action;->REMOVE_FROM_CAROUSEL:Lcom/amazon/kindle/cms/CMSEvent$Action;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/cms/CMSEvent$Action;

    .line 11
    sget-object v6, Lcom/amazon/kindle/cms/CMSEvent$Action;->UPDATE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/cms/CMSEvent$Action;->DELETE:Lcom/amazon/kindle/cms/CMSEvent$Action;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/cms/CMSEvent$Action;->SYNC:Lcom/amazon/kindle/cms/CMSEvent$Action;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/cms/CMSEvent$Action;->$VALUES:[Lcom/amazon/kindle/cms/CMSEvent$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/amazon/kindle/cms/CMSEvent$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/CMSEvent$Action;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/cms/CMSEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/CMSEvent$Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/CMSEvent$Action;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/cms/CMSEvent$Action;->$VALUES:[Lcom/amazon/kindle/cms/CMSEvent$Action;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/CMSEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/CMSEvent$Action;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/kindle/cms/CMSEvent$Action;->value:I

    return v0
.end method
