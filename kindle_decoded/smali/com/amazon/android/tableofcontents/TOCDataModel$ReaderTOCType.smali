.class final enum Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;
.super Ljava/lang/Enum;
.source "TOCDataModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/tableofcontents/TOCDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReaderTOCType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

.field public static final enum Book:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

.field public static final enum LavaMagazine:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    new-instance v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    const/4 v2, 0x0

    const-string v3, "Book"

    invoke-direct {v1, v3, v2}, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->Book:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    const/4 v2, 0x1

    const-string v3, "LavaMagazine"

    invoke-direct {v1, v3, v2}, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->LavaMagazine:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->$VALUES:[Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;
    .locals 1

    const-class v0, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;
    .locals 1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->$VALUES:[Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    invoke-virtual {v0}, [Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    return-object v0
.end method
