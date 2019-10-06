package macoun

/*
 * Copyright (c) 2019 by Oliver Boehm
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express orimplied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * (c)reated 05.10.19 by oliver (ob@oasd.de)
 */
class Welt {

    val lebewesen = mutableListOf<Lebewesen>();

    init {
        for (i in 0..9) {
            for (j in 0..9) {
                var lw = Lebewesen(Feld(i, j))
                if ((i + j) % 3 == 0) {
                    lw.die()
                }
                lebewesen.add(lw)
            }
        }
    }

    fun addLebewesen(neueLebewesen: Collection<Lebewesen>) {
        lebewesen.addAll(neueLebewesen);
    }

    fun addLebewesen(Lebewesen lw) {
        lebewesen.add(lw);
    }

    fun print() {
        for (i in 0..9) {
            printRow(i)
        }
    }

    private fun printRow(n: Int) {
        for (lw in lebewesen) {
            if (lw.feld.x == n) {
                System.out.print(lw)
            }
        }
        System.out.println()
    }

}