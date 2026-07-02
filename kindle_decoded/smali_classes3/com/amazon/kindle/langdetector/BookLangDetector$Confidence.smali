.class public final enum Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/langdetector/BookLangDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Confidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

.field public static final enum ConfidenceHigh:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

.field public static final enum ConfidenceLow:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

.field public static final enum ConfidenceMedium:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

.field public static final enum ConfidenceNone:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    const/4 v1, 0x0

    const-string v2, "ConfidenceNone"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceNone:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    new-instance v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    const/4 v2, 0x1

    const-string v3, "ConfidenceLow"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceLow:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    new-instance v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    const/4 v3, 0x2

    const-string v4, "ConfidenceMedium"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceMedium:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    new-instance v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    const/4 v4, 0x3

    const-string v5, "ConfidenceHigh"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceHigh:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    sget-object v6, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceNone:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceLow:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->ConfidenceMedium:Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->$VALUES:[Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;
    .locals 1

    const-class v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->$VALUES:[Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    invoke-virtual {v0}, [Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/langdetector/BookLangDetector$Confidence;

    return-object v0
.end method
