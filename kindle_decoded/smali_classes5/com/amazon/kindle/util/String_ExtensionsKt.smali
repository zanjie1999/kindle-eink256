.class public final Lcom/amazon/kindle/util/String_ExtensionsKt;
.super Ljava/lang/Object;
.source "String+Extensions.kt"


# static fields
.field private static final DIRECTED_ID_REGEX_PATTERN:Ljava/lang/String; = "(amzn1\\.account\\.[A-Z0-9]*)"


# direct methods
.method public static final scrubDirectedId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$scrubDirectedId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "replaceWith"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(amzn1\\.account\\.[A-Z0-9]*)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
