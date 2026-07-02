.class public Lorg/reflections/scanners/TypeAnnotationsScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "TypeAnnotationsScanner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    sget-object v0, Lorg/reflections/scanners/Scanners;->TypesAnnotated:Lorg/reflections/scanners/Scanners;

    invoke-direct {p0, v0}, Lorg/reflections/scanners/AbstractScanner;-><init>(Lorg/reflections/scanners/Scanner;)V

    return-void
.end method
