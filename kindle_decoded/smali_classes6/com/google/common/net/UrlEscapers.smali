.class public final Lcom/google/common/net/UrlEscapers;
.super Ljava/lang/Object;
.source "UrlEscapers.java"


# static fields
.field private static final URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FORM_PARAMETER_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 112
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const/4 v1, 0x0

    const-string v2, "-._~!$\'()*,;&=@:+"

    invoke-direct {v0, v2, v1}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_PATH_SEGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 143
    new-instance v0, Lcom/google/common/net/PercentEscaper;

    const-string v2, "-._~!$\'()*,;&=@:+/?"

    invoke-direct {v0, v2, v1}, Lcom/google/common/net/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/common/net/UrlEscapers;->URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-void
.end method

.method public static urlFragmentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 140
    sget-object v0, Lcom/google/common/net/UrlEscapers;->URL_FRAGMENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
