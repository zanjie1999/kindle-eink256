.class public final enum Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
.super Ljava/lang/Enum;
.source "SecondaryMenuType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/library/navigation/SecondaryMenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

.field public static final enum Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

.field public static final enum None:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    const/4 v1, 0x0

    const-string v2, "Library"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    .line 9
    new-instance v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    const/4 v2, 0x1

    const-string v3, "None"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->None:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    .line 7
    sget-object v4, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->Library:Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->$VALUES:[Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/library/navigation/SecondaryMenuType;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->$VALUES:[Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/library/navigation/SecondaryMenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/library/navigation/SecondaryMenuType;

    return-object v0
.end method
