.class public final enum Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;
.super Ljava/lang/Enum;
.source "IRestrictionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

.field public static final enum ALL_STORE:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

.field public static final enum BOOKS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

.field public static final enum DOCS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

.field public static final enum NEWSSTAND:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    const/4 v1, 0x0

    const-string v2, "BOOKS"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->BOOKS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    const/4 v2, 0x1

    const-string v3, "NEWSSTAND"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->NEWSSTAND:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    .line 17
    new-instance v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    const/4 v3, 0x2

    const-string v4, "DOCS"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->DOCS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    .line 18
    new-instance v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    const/4 v4, 0x3

    const-string v5, "ALL_STORE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->ALL_STORE:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    .line 13
    sget-object v6, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->BOOKS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->NEWSSTAND:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->DOCS:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->$VALUES:[Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->$VALUES:[Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/restriction/IRestrictionHandler$ContentType;

    return-object v0
.end method
