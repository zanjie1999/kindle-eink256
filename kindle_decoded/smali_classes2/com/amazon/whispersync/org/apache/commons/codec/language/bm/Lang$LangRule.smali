.class final Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;
.super Ljava/lang/Object;
.source "Lang.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LangRule"
.end annotation


# instance fields
.field private final acceptOnMatch:Z

.field private final languages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Ljava/util/regex/Pattern;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->pattern:Ljava/util/regex/Pattern;

    .line 87
    iput-object p2, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->languages:Ljava/util/Set;

    .line 88
    iput-boolean p3, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->acceptOnMatch:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/regex/Pattern;Ljava/util/Set;ZLcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;-><init>(Ljava/util/regex/Pattern;Ljava/util/Set;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->acceptOnMatch:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;)Ljava/util/Set;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->languages:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/bm/Lang$LangRule;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    return p1
.end method
