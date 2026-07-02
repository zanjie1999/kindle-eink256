.class public Lcom/amazon/xray/model/object/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/object/Entity$CountComparator;,
        Lcom/amazon/xray/model/object/Entity$LabelComparator;
    }
.end annotation


# instance fields
.field private final count:I

.field private final description:Lcom/amazon/xray/model/object/Description;

.field private final id:I

.field final label:Ljava/lang/String;

.field private final type:Lcom/amazon/xray/model/object/EntityType;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/amazon/xray/model/object/EntityType;Lcom/amazon/xray/model/object/Description;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p2}, Lcom/amazon/xray/util/Validate;->notEmpty(Ljava/lang/CharSequence;)V

    .line 48
    iput p1, p0, Lcom/amazon/xray/model/object/Entity;->id:I

    .line 49
    iput-object p2, p0, Lcom/amazon/xray/model/object/Entity;->label:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/xray/model/object/Entity;->type:Lcom/amazon/xray/model/object/EntityType;

    .line 51
    iput-object p4, p0, Lcom/amazon/xray/model/object/Entity;->description:Lcom/amazon/xray/model/object/Description;

    .line 52
    iput p5, p0, Lcom/amazon/xray/model/object/Entity;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/xray/model/object/Entity;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/amazon/xray/model/object/Entity;->count:I

    return p0
.end method

.method static getLocalizedStringComparator(Lcom/amazon/kindle/krx/content/IBook;)Ljava/text/Collator;
    .locals 0

    if-eqz p0, :cond_0

    .line 57
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/ebook/util/text/LanguageTag;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    .line 58
    invoke-static {p0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/amazon/xray/model/object/Entity;->count:I

    return v0
.end method

.method public getDescription()Lcom/amazon/xray/model/object/Description;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/xray/model/object/Entity;->description:Lcom/amazon/xray/model/object/Description;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/amazon/xray/model/object/Entity;->id:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/xray/model/object/Entity;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/xray/model/object/EntityType;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/xray/model/object/Entity;->type:Lcom/amazon/xray/model/object/EntityType;

    return-object v0
.end method
