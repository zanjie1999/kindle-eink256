.class public Lcom/amazon/ebook/util/text/HttpAcceptLanguage;
.super Ljava/lang/Object;


# static fields
.field private static final ACCEPT_LANGUAGE_FMT:Ljava/lang/String; = "{0};q={1,number,0.0#},"

.field private static final ASTERISK:C = '*'

.field private static final HYPHEN:C = '-'

.field private static final LAST_CHAR:C = 'z'

.field private static final WEIGHT_PARSE_PATTERN:Ljava/lang/String; = "\';q=\'0.###"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
