.class public final enum Lcom/amazon/whispersync/coral/annotation/BsfErrorType;
.super Ljava/lang/Enum;
.source "BsfErrorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whispersync/coral/annotation/BsfErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

.field public static final enum BadArgs:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

.field public static final enum DependencyFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

.field public static final enum ServiceFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    const/4 v1, 0x0

    const-string v2, "BadArgs"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->BadArgs:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    new-instance v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    const/4 v2, 0x1

    const-string v3, "DependencyFailure"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->DependencyFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    new-instance v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    const/4 v3, 0x2

    const-string v4, "ServiceFailure"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->ServiceFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    .line 3
    sget-object v5, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->BadArgs:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->DependencyFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->$VALUES:[Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whispersync/coral/annotation/BsfErrorType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whispersync/coral/annotation/BsfErrorType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->$VALUES:[Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/coral/annotation/BsfErrorType;

    return-object v0
.end method
