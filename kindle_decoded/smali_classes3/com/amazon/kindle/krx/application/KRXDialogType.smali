.class public final enum Lcom/amazon/kindle/krx/application/KRXDialogType;
.super Ljava/lang/Enum;
.source "KRXDialogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/application/KRXDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/application/KRXDialogType;

.field public static final enum CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v1, 0x0

    const-string v2, "CONNECTION_ERROR"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/application/KRXDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/krx/application/KRXDialogType;

    aput-object v0, v2, v1

    .line 3
    sput-object v2, Lcom/amazon/kindle/krx/application/KRXDialogType;->$VALUES:[Lcom/amazon/kindle/krx/application/KRXDialogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/application/KRXDialogType;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/kindle/krx/application/KRXDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/application/KRXDialogType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/application/KRXDialogType;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->$VALUES:[Lcom/amazon/kindle/krx/application/KRXDialogType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/application/KRXDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/application/KRXDialogType;

    return-object v0
.end method
