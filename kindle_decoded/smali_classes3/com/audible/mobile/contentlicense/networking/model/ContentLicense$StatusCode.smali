.class public final enum Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
.super Ljava/lang/Enum;
.source "ContentLicense.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

.field public static final enum DEGRADED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Degraded"
    .end annotation
.end field

.field public static final enum DENIED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Denied"
    .end annotation
.end field

.field public static final enum ERROR:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Error"
    .end annotation
.end field

.field public static final enum GRANTED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Granted"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    const/4 v2, 0x0

    const-string v3, "GRANTED"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->GRANTED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    const/4 v2, 0x1

    const-string v3, "DEGRADED"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->DEGRADED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    const/4 v2, 0x2

    const-string v3, "DENIED"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->DENIED:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    const/4 v2, 0x3

    const-string v3, "ERROR"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->ERROR:Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .locals 1

    const-class v0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;
    .locals 1

    sget-object v0, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/model/ContentLicense$StatusCode;

    return-object v0
.end method
