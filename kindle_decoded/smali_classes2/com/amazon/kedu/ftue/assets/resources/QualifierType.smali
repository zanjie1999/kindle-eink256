.class public final enum Lcom/amazon/kedu/ftue/assets/resources/QualifierType;
.super Ljava/lang/Enum;
.source "QualifierType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

.field public static final enum LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

.field public static final enum ORIENTATION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

.field public static final enum PLATFORM_VERSION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;


# instance fields
.field private final filter:Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;

.field private final priority:I

.field private final regex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v6, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    new-instance v5, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$1;

    invoke-direct {v5}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$1;-><init>()V

    const-string v1, "LOCALE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "-([a-z]{2}(?:-[r][a-z]{2})?)(?:-|$)"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;)V

    sput-object v6, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    .line 50
    new-instance v0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    new-instance v12, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$2;

    invoke-direct {v12}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$2;-><init>()V

    const-string v8, "ORIENTATION"

    const/4 v9, 0x1

    const/16 v10, 0x9

    const-string v11, "-(port|land)(?:-|$)"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;)V

    sput-object v0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->ORIENTATION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    .line 83
    new-instance v0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    new-instance v6, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$3;

    invoke-direct {v6}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$3;-><init>()V

    const-string v2, "PLATFORM_VERSION"

    const/4 v3, 0x2

    const/16 v4, 0x12

    const-string v5, "-v([0-9]+)(?:-|$)"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;)V

    sput-object v0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->PLATFORM_VERSION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    .line 10
    sget-object v2, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->LOCALE:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->ORIENTATION:Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->$VALUES:[Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput-object p4, p0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->regex:Ljava/lang/String;

    .line 128
    iput p3, p0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->priority:I

    .line 129
    iput-object p5, p0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->filter:Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kedu/ftue/assets/resources/QualifierType;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->priority:I

    return p0
.end method

.method private static getSortedQualifiers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            ">;"
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->values()[Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$4;

    invoke-direct {v1}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$4;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static parseQualifiers(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kedu/ftue/assets/resources/QualifierType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->getSortedQualifiers()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 154
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    .line 157
    iget-object v5, v4, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->regex:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 158
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .line 161
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/resources/QualifierType;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kedu/ftue/assets/resources/QualifierType;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->$VALUES:[Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    invoke-virtual {v0}, [Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kedu/ftue/assets/resources/QualifierType;

    return-object v0
.end method


# virtual methods
.method public filter(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/amazon/kedu/ftue/assets/resources/ResourceDetails;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/resources/QualifierType;->filter:Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kedu/ftue/assets/resources/QualifierType$Filter;->apply(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
