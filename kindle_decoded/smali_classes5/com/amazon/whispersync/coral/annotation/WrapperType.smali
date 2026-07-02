.class public final enum Lcom/amazon/whispersync/coral/annotation/WrapperType;
.super Ljava/lang/Enum;
.source "WrapperType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/coral/annotation/WrapperType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/coral/annotation/WrapperType;

.field public static final enum INPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;

.field public static final enum OUTPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3
    new-instance v0, Lcom/amazon/whispersync/coral/annotation/WrapperType;

    const/4 v1, 0x0

    const-string v2, "INPUT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/coral/annotation/WrapperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/WrapperType;->INPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;

    new-instance v0, Lcom/amazon/whispersync/coral/annotation/WrapperType;

    const/4 v2, 0x1

    const-string v3, "OUTPUT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/coral/annotation/WrapperType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/WrapperType;->OUTPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whispersync/coral/annotation/WrapperType;

    sget-object v4, Lcom/amazon/whispersync/coral/annotation/WrapperType;->INPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whispersync/coral/annotation/WrapperType;->$VALUES:[Lcom/amazon/whispersync/coral/annotation/WrapperType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/coral/annotation/WrapperType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/whispersync/coral/annotation/WrapperType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/coral/annotation/WrapperType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/coral/annotation/WrapperType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/whispersync/coral/annotation/WrapperType;->$VALUES:[Lcom/amazon/whispersync/coral/annotation/WrapperType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/coral/annotation/WrapperType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/coral/annotation/WrapperType;

    return-object v0
.end method
