.class public Lorg/reflections/scanners/MethodAnnotationsScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "MethodAnnotationsScanner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    sget-object v0, Lorg/reflections/scanners/Scanners;->MethodsAnnotated:Lorg/reflections/scanners/Scanners;

    invoke-direct {p0, v0}, Lorg/reflections/scanners/AbstractScanner;-><init>(Lorg/reflections/scanners/Scanner;)V

    return-void
.end method
